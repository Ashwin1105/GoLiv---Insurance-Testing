import { Before, After, setDefaultTimeout, Status } from '@cucumber/cucumber';
import { chromium, type Browser, type BrowserContext, type Page, expect } from '@playwright/test';

setDefaultTimeout(15 * 1000);

export const pf: { page: Page; browser?: Browser; context?: BrowserContext } = {
  page: undefined as any,
  browser: undefined,
  context: undefined,
};

Before(async function () {
  const browser = await chromium.launch();
  const context = await browser.newContext();
  const page = await context.newPage();

  pf.browser = browser;
  pf.context = context;
  pf.page = page;

  this.browser = browser;
  this.context = context;
  this.page = page;

  await page.goto('http://host.docker.internal:5176');
  await expect(page.locator('[data-testid="login-username"]')).toBeVisible();
});

After(async function (scenario) {
  if (scenario.result?.status === Status.FAILED && pf.page) {
    await pf.page.screenshot({ path: `reports/failure-${Date.now()}.png`, fullPage: true });
  }

  await pf.page?.close().catch(() => undefined);
  await pf.context?.close().catch(() => undefined);
  await pf.browser?.close().catch(() => undefined);

  pf.page = undefined as any;
  pf.context = undefined;
  pf.browser = undefined;

  this.page = undefined;
  this.context = undefined;
  this.browser = undefined;
});