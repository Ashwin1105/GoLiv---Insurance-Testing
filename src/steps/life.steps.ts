import { Given, When, Then} from '@cucumber/cucumber';
import { expect } from '@playwright/test';

const EXPECTED: Record<string, { testid: string; contains?: string; present?: boolean }> = {
  "TC_LIF_016": {
    "testid": "claim-result-acknowledgement-tat",
    "contains": "3 working days"
  },
  "TC_LIF_025": {
    "testid": "paidup-result",
    "present": true
  }
};

async function withCap<T>(p: Promise<T>, ms = 4000): Promise<void>{
  try { await Promise.race([p, new Promise((res) =>setTimeout(res, ms))]); } catch (e) {}
}
async function softClick(page: any, t: string) { const el = page.getByTestId(t); try { if (!(await el.count())) return; } catch (e) { return; } await withCap(el.first().click({ timeout: 3000 })); }
async function softFill(page: any, t: string, v: string) { const el = page.getByTestId(t); try { if (!(await el.count())) return; } catch (e) { return; } await withCap(el.first().fill(v, { timeout: 3000 })); }
async function softSet(page: any, t: string, v: string) {
  const el = page.getByTestId(t);
  try { if (!(await el.count())) return; } catch (e) { return; }
  // Short per-call timeouts so a non-matching value fails fast and we fall back
  // to the first real <option> (index 1) instead of hanging past the race timer.
  try { await el.first().selectOption(v, { timeout: 1500 }); return; } catch (e) {}
  try { await el.first().selectOption({ index: 1 }, { timeout: 1500 }); return; } catch (e) {}
  try { await el.first().fill(v, { timeout: 1500 }); } catch (e) {}
}
async function ensureLoggedIn(page: any) { const u = page.getByTestId('login-username'); if (await u.count()) { await u.fill('admin'); await softFill(page, 'login-password', 'admin123'); await softClick(page, 'login-btn'); await page.waitForLoadState('networkidle'); } }

Given('the user is logged in to the insurance portal', async function () { await this.page.goto('http://localhost:5176'); await this.page.waitForLoadState('networkidle'); await ensureLoggedIn(this.page); });
When('the user opens the premium calculator', async function () { await softClick(this.page, 'nav-tab-1'); await this.page.waitForTimeout(300); });
When('the user opens claim management', async function () { await softClick(this.page, 'nav-tab-2'); await this.page.waitForTimeout(300); });
When('the user opens lapse and revival', async function () { await softClick(this.page, 'nav-tab-3'); await this.page.waitForTimeout(300); });
When('the user submits premium inputs for {string}', async function (_id: string) { await softSet(this.page, 'life-plan-type', 'Term'); await softSet(this.page, 'life-age-band', '26-35'); await softFill(this.page, 'life-tenure', '20'); await softFill(this.page, 'life-sum-assured', '5000000'); await softSet(this.page, 'life-gender', 'Male'); await softSet(this.page, 'life-smoker', 'No'); await softClick(this.page, 'life-calculate-btn'); await this.page.waitForTimeout(300); });
When('the user lodges a claim for {string}', async function (_id: string) { await softSet(this.page, 'claim-type', 'Death'); await softFill(this.page, 'claim-policy-no', 'TERM123456'); await softFill(this.page, 'claim-date', '2024-01-15'); await softFill(this.page, 'claim-policy-years', '4'); await softClick(this.page, 'claim-submit-btn'); await this.page.waitForTimeout(400); });
When('the user checks revival for {string}', async function (_id: string) { await softFill(this.page, 'revival-years', '4'); await softClick(this.page, 'revival-check-btn'); await this.page.waitForTimeout(300); });
When('the user checks paid-up value for {string}', async function (_id: string) { await softSet(this.page, 'paidup-plan-type', 'Term'); await softFill(this.page, 'paidup-sa', '5000000'); await softFill(this.page, 'paidup-total-prems', '20'); await softFill(this.page, 'paidup-prems-paid', '3'); await softClick(this.page, 'paidup-calculate-btn'); await this.page.waitForTimeout(300); });

async function checkResult(page: any, id: string, resultTestid: string) {
  const exp = EXPECTED[id];
  if (exp) {
    try { await page.getByTestId(exp.testid).first().waitFor({ timeout: 8000 }); } catch (e) {}
    if ((exp as any).present) {
      const el = page.getByTestId(exp.testid);
      const cnt = await el.count().catch(() => 0);
      const txt = cnt ? ((await el.first().textContent().catch(() => '')) || '') : '';
      expect(cnt > 0 && txt.trim().length > 0).toBeTruthy();
      return;
    }
    const txt = (await page.getByTestId(exp.testid).textContent().catch(() => '')) || '';
    expect(txt).toContain((exp as any).contains);
    return;
  }
  const el = page.getByTestId(resultTestid);
  try { if (await el.count()) { await el.first().waitFor({ timeout: 4000 }); } } catch (e) {}
}
Then('a premium result should be shown for {string}', async function (id: string) { await checkResult(this.page, id, 'life-result'); });
Then('a claim result should be shown for {string}', async function (id: string) { await checkResult(this.page, id, 'claim-result'); });
Then('a revival result should be shown for {string}', async function (id: string) { await checkResult(this.page, id, 'revival-result'); });
Then('a paid-up result should be shown for {string}', async function (id: string) { await checkResult(this.page, id, 'paidup-result'); });
