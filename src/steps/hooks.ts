import { Before, After, Status, setDefaultTimeout } from '@cucumber/cucumber';
import { chromium, Browser, BrowserContext, Page } from '@playwright/test';
setDefaultTimeout(60 * 1000);
let browser: Browser; let context: BrowserContext;
export const pf: { page: Page | undefined } = { page: undefined };
Before(async function () { browser = await chromium.launch({ headless: ({}).HEADLESS !== 'false', args: ['--no-sandbox', '--disable-dev-shm-usage'] }); context = await browser.newContext({ viewport: { width: 1366, height: 768 } }); const page = await context.newPage(); this.page = page; pf.page = page; await page.goto('http://localhost:5176'); await page.waitForLoadState('networkidle'); });
After(async function (scenario) { try { if (scenario.result?.status === Status.FAILED && this.page) { const shot = await this.page.screenshot({ fullPage: true }); if (this.attach) this.attach(shot, 'image/png'); } } catch (e) {} if (context) await context.close(); if (browser) await browser.close(); pf.page = undefined; });
