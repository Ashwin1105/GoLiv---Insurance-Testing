import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: 'tests',
  /* Shared settings for all the browsers */
  use: {
    baseURL: 'http://localhost:5176',
    headless: false,
    screenshot: 'on-failure',
  },
  /* Reporter to show test summary */
  reporter: 'list',
  /* Opt out of parallel tests */
  workers: 1,
  /* Run your local development environment before running tests */
  webServer: {
    command: 'npm run dev',
    port: 5176,
    timeout: 120 * 1000,
  },
});

// Custom hooks for Cucumber
import { Before, After, BeforeAll, AfterAll } from '@cucumber/cucumber';
import { chromium } from '@playwright/test';
import { setWorldConstructor } from '@cucumber/cucumber';
import { World } from './world';
import { expect } from '@playwright/test';

setWorldConstructor(World);

BeforeAll(async () => {
  const browser = await chromium.launch();
  const context = await browser.newContext();
  const page = await context.newPage();
  await page.goto('http://localhost:5176');
  await page.fill('[data-testid="login-username"]', 'admin');
  await page.fill('[data-testid="login-password"]', 'admin123');
  await page.click('[data-testid="login-btn"]');
  await page.waitForSelector('[data-testid="dashboard-page"]');
});

AfterAll(async () => {
  await World.page.close();
  await World.context.close();
  await World.browser.close();
});

Before(async () => {
  World.page = await World.browser.newPage();
});

After(async () => {
  World.page.close();
});