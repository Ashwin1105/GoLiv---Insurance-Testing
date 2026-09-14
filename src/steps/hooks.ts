import { chromium, Browser, Page } from '@playwright/test';
import { setDefaultTimeout, Before, After } from '@cucumber/cucumber';
import * as fs from 'fs';
import * as path from 'path';

export const pf: { page: Page } = { page: undefined as any };

setDefaultTimeout(15 * 1000);

const NOTRUN_IDS = new Set([
  'TC_EC_001',
  'TC_EC_002',
  'TC_EC_003',
  'TC_EC_004',
  'TC_EC_005',
  'TC_EC_006',
  'TC_EC_007',
  'TC_EC_008',
  'TC_EC_009',
  'TC_EC_010',
  'TC_EC_011',
  'TC_EC_012',
  'TC_EC_013',
  'TC_EC_014',
  'TC_EC_015',
  'TC_EC_016',
  'TC_EC_017',
  'TC_EC_018',
  'TC_EC_019',
  'TC_EC_020',
]);

Before(function (this: any, scenario: any) {
  const name: string = scenario.pickle.name;
  for (const id of NOTRUN_IDS) {
    if (name.startsWith(id)) {
      return this.skip();
    }
  }
});

Before(async function (this: any) {
  const browser: Browser = await chromium.launch();
  const context = await browser.newContext();
  const page: Page = await context.newPage();
  await page.goto('http://localhost:5176');
  pf.page = page;
  this.browser = browser;
  this.context = context;
});

After(async function (this: any, scenario: any) {
  const page = pf.page;
  if (scenario.result?.status === 'failed' && page) {
    const screenshotsDir = path.resolve('screenshots');
    if (!fs.existsSync(screenshotsDir)) {
      fs.mkdirSync(screenshotsDir, { recursive: true });
    }
    const fileName = `${scenario.pickle.name.replace(/\s+/g, '_')}.png`;
    await page.screenshot({ path: path.join(screenshotsDir, fileName) });
  }
  if (page) {
    await page.close();
  }
  if (this.context) {
    await this.context.close();
  }
  if (this.browser) {
    await this.browser.close();
  }
});