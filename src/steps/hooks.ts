import { Before, After, setDefaultTimeout, Status } from '@cucumber/cucumber';
import { chromium, Page, Browser, BrowserContext } from '@playwright/test';

setDefaultTimeout(15 * 1000);

export const pf: { page: Page; browser: Browser; context: BrowserContext } = {
  page: undefined as any,
  browser: undefined as any,
  context: undefined as any,
};

Before(async function () {
  pf.browser = await chromium.launch();
  pf.context = await pf.browser.newContext();
  pf.page = await pf.context.newPage();
});

After(async function (scenario) {
  if (scenario.result?.status === Status.FAILED && pf.page) {
    await this.attach(await pf.page.screenshot({ fullPage: true }), 'image/png');
  }

  if (pf.page) {
    await pf.page.close();
  }
  if (pf.context) {
    await pf.context.close();
  }
  if (pf.browser) {
    await pf.browser.close();
  }
});