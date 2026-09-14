import { setDefaultTimeout, Before, After } from '@cucumber/cucumber';
import { chromium, Browser, BrowserContext, Page, expect } from '@playwright/test';
import * as fs from 'fs';
import * as path from 'path';

// Export a live page holder for step files
export const pf: { page: Page } = { page: undefined as any };

// Expected messages per test case (only those that provide an explicit Expected line)
export const EXPECTED: Record<string, string> = {
  TC_EC_001: "Claim type is mandatory",
  TC_EC_002: "Policy number is required",
  TC_EC_003: "Invalid policy number format",
  TC_EC_004: "Intimation date is required",
  TC_EC_005: "Intimation date cannot be in the future",
  TC_EC_006: "first‑3‑year process",
  TC_EC_007: "SLA breach alert",
  TC_EC_008: "within SLA",
  TC_EC_009: "SLA breach alert",
  TC_EC_010: "compliant with AC_005",
  TC_EC_011: "breach alert for AC_005",
  TC_EC_012: "INR 120,000",
  TC_EC_013: "INR 200,000",
  TC_EC_014: "INR 180,000",
  TC_EC_015: "INR 125,000",
  TC_EC_016: "INR 625,000",
  TC_EC_017: "INR 1,00,00,000",
  TC_EC_018: "INR 5,50,00,000",
  TC_EC_019: "Invalid policy number",
  TC_EC_020: "Policy number not found",
};

setDefaultTimeout(15 * 1000);

let browser: Browser;
let context: BrowserContext;

Before(async function () {
  browser = await chromium.launch({ headless: true });
  context = await browser.newContext();
  const page = await context.newPage();
  await page.goto('http://localhost:5176');
  pf.page = page;
});

After(async function (scenario) {
  // Capture screenshot on failure
  if (scenario.result?.status === 'failed') {
    const screenshotsDir = path.resolve('screenshots');
    if (!fs.existsSync(screenshotsDir)) {
      fs.mkdirSync(screenshotsDir, { recursive: true });
    }
    const fileName = `${scenario.pickle?.name?.replace(/[^a-z0-9]/gi, '_')}.png`;
    await pf.page.screenshot({ path: path.join(screenshotsDir, fileName) });
  }

  // Clean up resources
  if (pf.page) {
    await pf.page.close();
  }
  if (context) {
    await context.close();
  }
  if (browser) {
    await browser.close();
  }
});