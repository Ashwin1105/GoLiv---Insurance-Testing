import { Given, When, Then, Before, After, setDefaultTimeout, Status} from '@cucumber/cucumber';
import { expect, chromium, Browser, BrowserContext, Page } from '@playwright/test';

setDefaultTimeout(15 * 1000);

type ClaimScenarioId =
  | 'TC_LIF_011'
  | 'TC_LIF_012'
  | 'TC_LIF_013'
  | 'TC_LIF_014'
  | 'TC_LIF_015'
  | 'TC_LIF_016'
  | 'TC_LIF_017'
  | 'TC_LIF_018'
  | 'TC_LIF_019'
  | 'TC_LIF_020'
  | 'TC_EC_001'
  | 'TC_EC_002'
  | 'TC_EC_003'
  | 'TC_EC_004'
  | 'TC_EC_005'
  | 'TC_EC_006'
  | 'TC_EC_007'
  | 'TC_EC_008'
  | 'TC_EC_009'
  | 'TC_EC_010'
  | 'TC_EC_011'
  | 'TC_EC_012'
  | 'TC_EC_013'
  | 'TC_EC_014'
  | 'TC_EC_015'
  | 'TC_EC_016'
  | 'TC_EC_017'
  | 'TC_EC_018'
  | 'TC_EC_019'
  | 'TC_EC_020';

declare module '@cucumber/cucumber' {
  interface World {
    page?: Page;
    browser?: Browser;
    context?: BrowserContext;
    scenarioId?: ClaimScenarioId;
  }
}

const EXPECTED: Record<ClaimScenarioId, string> = {
  TC_LIF_011: 'Policy number captured',
  TC_LIF_012: 'Natural death selected',
  TC_LIF_013: 'Intimation date recorded',
  TC_LIF_014: 'Settlement within 30 days',
  TC_LIF_015: 'Investigation period 90 days',
  TC_LIF_016: 'Acknowledgement within 3 working days',
  TC_LIF_017: '80 percent of premiums refunded',
  TC_LIF_018: '25 percent accelerated benefit',
  TC_LIF_019: 'Accidental death claim processed',
  TC_LIF_020: 'Invalid policy number rejected',
  TC_EC_001: 'Claim type is mandatory',
  TC_EC_002: 'Policy number is required',
  TC_EC_003: 'Invalid policy number format',
  TC_EC_004: 'Intimation date is required',
  TC_EC_005: 'Intimation date cannot be in the future',
  TC_EC_006: 'Investigation workflow',
  TC_EC_007: 'SLA breach',
  TC_EC_008: 'within SLA',
  TC_EC_009: 'SLA breach alert',
  TC_EC_010: 'compliant',
  TC_EC_011: 'breach alert',
  TC_EC_012: 'INR 120,000',
  TC_EC_013: 'INR 200,000',
  TC_EC_014: 'INR 180,000',
  TC_EC_015: 'INR 125,000',
  TC_EC_016: 'INR 625,000',
  TC_EC_017: '1,00,00,000',
  TC_EC_018: '5,50,00,000',
  TC_EC_019: 'Invalid policy number',
  TC_EC_020: 'Policy number not found',
};

Before(async function () {
  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext();
  const page = await context.newPage();
  this.browser = browser;
  this.context = context;
  this.page = page;
});

After(async function (scenario) {
  if (scenario.result?.status === Status.FAILED && this.page) {
    await this.page.screenshot({ path: `./artifacts/${scenario.pickle.name}.png`, fullPage: true }).catch(() => {});
  }
  if (this.page) {
    await this.page.close().catch(() => {});
  }
  if (this.context) {
    await this.context.close().catch(() => {});
  }
  if (this.browser) {
    await this.browser.close().catch(() => {});
  }
});

Given('I open the InsureCo Portal', async function () {
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  await page.goto('http://localhost:5176');
});

When('I log in with valid credentials', async function () {
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  await page.getByTestId('login-username').fill('admin');
  await page.getByTestId('login-password').fill('admin123');
  await page.getByTestId('login-btn').click();
});

Then('the dashboard page is displayed', async function () {
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  await expect(page.getByTestId('dashboard-page')).toBeVisible();
});

Given('I am on the InsureCo dashboard for {string}', async function (scenarioId: string) {
  this.scenarioId = scenarioId as ClaimScenarioId;
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  await expect(page.getByTestId('dashboard-page')).toBeVisible();
});

When('I open the claims tab', async function () {
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  await page.getByTestId('nav-tab-1').click();
});

When('I open the claims screen', async function () {
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  await page.getByTestId('nav-tab-1').click();
});

Then('the claim result for {string} should be displayed', async function (scenarioId: string) {
  const page = this.page;
  if (!page) throw new Error('Page not initialized');
  const expected = EXPECTED[scenarioId as ClaimScenarioId];
  await expect(page.getByTestId('main-nav')).toBeVisible();
  await expect(page.getByTestId('dashboard-page')).toBeVisible();
  await expect(page.locator(`[data-testid="dashboard-page"]`)).toContainText(expected);
});