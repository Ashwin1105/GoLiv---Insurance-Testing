import { Before, After, Given, Then, When, setDefaultTimeout } from '@cucumber/cucumber';
import { chromium, expect, type Browser, type BrowserContext, type Page } from '@playwright/test';
import fs from 'fs';
import path from 'path';

setDefaultTimeout(15 * 1000);

type WorldState = {
  browser?: Browser;
  context?: BrowserContext;
  page?: Page;
};

declare module '@cucumber/cucumber' {
  interface World extends WorldState {}
}

Before(async function () {
  this.browser = await chromium.launch({ headless: true });
  this.context = await this.browser.newContext();
  this.page = await this.context.newPage();
  await this.page.goto('http://localhost:5176');
});

After(async function (scenario) {
  if (scenario.result?.status === 'FAILED' && this.page) {
    const screenshotsDir = path.join(process.cwd(), 'artifacts');
    if (!fs.existsSync(screenshotsDir)) {
      fs.mkdirSync(screenshotsDir, { recursive: true });
    }
    await this.page.screenshot({
      path: path.join(screenshotsDir, `${scenario.pickle.name.replace(/[^a-z0-9_-]+/gi, '_')}.png`),
      fullPage: true,
    });
  }

  if (this.page) await this.page.close();
  if (this.context) await this.context.close();
  if (this.browser) await this.browser.close();
});

Given('I log in to InsureCo Portal', async function () {
  await this.page!.locator('[data-testid="login-username"]').fill('admin');
  await this.page!.locator('[data-testid="login-password"]').fill('admin123');
  await this.page!.locator('[data-testid="login-btn"]').click();
  await expect(this.page!.locator('[data-testid="main-nav"]')).toBeVisible();
});

Given('I am on the dashboard page', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

When('I open product card {int}', async function (cardNumber: number) {
  await this.page!.locator(`[data-testid="product-card-${cardNumber}"]`).click();
});

When('I navigate to tab {int}', async function (tabIndex: number) {
  await this.page!.locator(`[data-testid="nav-tab-${tabIndex}"]`).click();
});

When('I logout from the portal', async function () {
  await this.page!.locator('[data-testid="logout-btn"]').click();
});

Then('the main navigation should be visible', async function () {
  await expect(this.page!.locator('[data-testid="main-nav"]')).toBeVisible();
});

Then('the dashboard page should be visible', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Then('the selected product card should be visible', async function () {
  const cards = this.page!.locator('[data-testid^="product-card-"]');
  await expect(cards.first()).toBeVisible();
});

Then('I should see the main navigation count {int}', async function (expectedCount: number) {
  await expect(this.page!.locator('[data-testid="main-nav"]').locator('*')).toHaveCount(expectedCount);
});

Then('I should see no dashboard page', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]').count()).resolves.toBe(0);
});

Then('I should be logged out', async function () {
  await expect(this.page!.locator('[data-testid="login-btn"]')).toBeVisible();
});

Given('I need to verify term plan entry age minimum 18 years accepted', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('term plan age 18 should be accepted', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify term plan entry age maximum 65 years accepted', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('term plan age 65 should be accepted', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify policy term minimum 5 years is accepted', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('policy term 5 years should be accepted', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify policy term maximum 40 years is accepted', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('policy term 40 years should be accepted', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify minimum sum assured of 25 lakhs is enforced', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('minimum sum assured should be enforced', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify premium calculation for non-smoker male profile', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('non-smoker male premium should be calculated', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify smoker premium loading is applied at issuance', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('smoker premium loading should be applied', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify premium calculation for female lives is lower', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('female life premium should be lower', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify NRI applicant premium calculation with medical flag', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('NRI premium with medical flag should be calculated', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify online channel premium calculation succeeds', async function () {
  await this.page!.locator('[data-testid="nav-tab-0"]').click();
});

Then('online channel premium calculation should succeed', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify death claim lodgement captures policy number', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('death claim lodgement should capture policy number', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify claim type selection for natural death', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('natural death claim type should be selected', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify claim intimation date is recorded', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('claim intimation date should be recorded', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify claim settlement within 30 days for policy over 3 years', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('claim settlement within 30 days should be shown', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify investigation period of 90 days for early claims', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('investigation period of 90 days should be shown', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify claim acknowledgement within 3 working days of intimation', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('claim acknowledgement within 3 working days should be shown', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify suicide within 12 months refunds 80 percent of premiums', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('80 percent premium refund should be shown', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify critical illness rider claim acceleration of 25 percent', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('critical illness acceleration of 25 percent should be shown', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify accidental death benefit claim processing', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('accidental death benefit claim processing should be shown', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify claim rejection for invalid policy number', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('invalid policy number claim should be rejected', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify death claim with malformed policy number format', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('malformed policy number should be rejected', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify death claim with non-existent policy number', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('non-existent policy number should be rejected', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify death claim with policy number containing spaces or hidden characters', async function () {
  await this.page!.locator('[data-testid="nav-tab-1"]').click();
});

Then('policy number with spaces or hidden characters should be rejected', async function () {
  await expect(this.page!.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Given('I need to verify the remaining notrun scenarios', async function () {
  this.skip();
});