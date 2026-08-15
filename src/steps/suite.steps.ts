import { After, Before, Given, Then, When, setDefaultTimeout} from '@cucumber/cucumber';
import { expect, type Page } from '@playwright/test';
import { pf } from './hooks';

setDefaultTimeout(15 * 1000);

type ClaimContext = {
  policyNumber?: string;
  claimType?: string;
  intimationDate?: string;
  acknowledgementText?: string;
  settlementText?: string;
  investigationText?: string;
  refundText?: string;
  accelerationText?: string;
  riderAmountText?: string;
  statusText?: string;
};

declare module '@cucumber/cucumber' {
  interface World {
    page?: Page;
    claimContext?: ClaimContext;
  }
}

const APP_URL = 'http://localhost:5176';

async function ensureAppLoaded(page: Page) {
  await page.goto(APP_URL);
  await expect(page.locator('[data-testid="login-username"]')).toBeVisible();
}

async function loginIfNeeded(page: Page) {
  const loginVisible = await page.locator('[data-testid="login-username"]').count();
  if (loginVisible > 0) {
    await page.locator('[data-testid="login-username"]').fill('admin');
    await page.locator('[data-testid="login-password"]').fill('admin123');
    await page.locator('[data-testid="login-btn"]').click();
    await expect(page.locator('[data-testid="dashboard-page"]')).toBeVisible();
  }
}

async function openProductCard(page: Page, index: 1 | 2 | 3 | 4) {
  await page.locator(`[data-testid="product-card-${index}"]`).click();
}

async function ensureOnDashboard(page: Page) {
  await expect(page.locator('[data-testid="dashboard-page"]')).toBeVisible();
  await expect(page.locator('[data-testid="main-nav"]')).toBeVisible();
}

Before(async function () {
  this.page = pf.page;
  this.claimContext = {};
  await ensureAppLoaded(this.page!);
});

After(async function () {
  if (this.page) {
    await this.page.close();
  }
});

Given('the user is logged in to InsureCo Portal', async function () {
  const page = this.page!;
  await loginIfNeeded(page);
  await ensureOnDashboard(page);
});

Given('the user opens the term plan card', async function () {
  const page = this.page!;
  await ensureOnDashboard(page);
  await openProductCard(page, 1);
});

Given('the user opens the death claim card', async function () {
  const page = this.page!;
  await ensureOnDashboard(page);
  await openProductCard(page, 2);
});

Given('the user opens the claim processing card', async function () {
  const page = this.page!;
  await ensureOnDashboard(page);
  await openProductCard(page, 3);
});

Given('the user opens the rider card', async function () {
  const page = this.page!;
  await ensureOnDashboard(page);
  await openProductCard(page, 4);
});

When('the user logs in with username {string} and password {string}', async function (username: string, password: string) {
  const page = this.page!;
  await page.locator('[data-testid="login-username"]').fill(username);
  await page.locator('[data-testid="login-password"]').fill(password);
  await page.locator('[data-testid="login-btn"]').click();
});

When('the user clicks navigation tab {int}', async function (index: number) {
  const page = this.page!;
  await ensureOnDashboard(page);
  await page.locator(`[data-testid="nav-tab-${index}"]`).click();
});

When('the user opens product card {int}', async function (index: number) {
  const page = this.page!;
  await ensureOnDashboard(page);
  await page.locator(`[data-testid="product-card-${index}"]`).click();
});

Then('the dashboard page should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Then('the main navigation should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="main-nav"]')).toBeVisible();
});

Then('the logout button should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="logout-btn"]')).toBeVisible();
});

Then('the application should show the logged-in dashboard', async function () {
  const page = this.page!;
  await ensureOnDashboard(page);
});

Then('the selected product card should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="product-card-1"]')).toBeVisible();
});

Then('the product card count should be {int}', async function (count: number) {
  const page = this.page!;
  await expect(page.locator('[data-testid^="product-card-"]')).toHaveCount(count);
});

Then('the acknowledgement text should mention {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="acknowledgement-text"]');
  await expect(locator).toContainText(text);
});

Then('the settlement text should mention {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="settlement-text"]');
  await expect(locator).toContainText(text);
});

Then('the investigation text should mention {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="investigation-text"]');
  await expect(locator).toContainText(text);
});

Then('the refund text should mention {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="refund-text"]');
  await expect(locator).toContainText(text);
});

Then('the acceleration text should mention {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="acceleration-text"]');
  await expect(locator).toContainText(text);
});

Then('the rider amount text should mention {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="rider-amount-text"]');
  await expect(locator).toContainText(text);
});

Then('the claim type should be {string}', async function (claimType: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="claim-type"]');
  await expect(locator).toHaveText(new RegExp(claimType));
});

Then('the policy number should be {string}', async function (policyNumber: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="policy-number"]');
  await expect(locator).toContainText(policyNumber);
});

Then('the intimation date should be {string}', async function (intimationDate: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="intimation-date"]');
  await expect(locator).toContainText(intimationDate);
});

Then('the result text should contain {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="result-text"]');
  await expect(locator).toContainText(text);
});

Then('the status text should contain {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="status-text"]');
  await expect(locator).toContainText(text);
});

Then('the error text should contain {string}', async function (text: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="error-text"]');
  await expect(locator).toContainText(text);
});

Then('the claim number should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="claim-number"]')).toBeVisible();
});

Then('the claim form should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="claim-form"]')).toBeVisible();
});

Then('the claim submission status should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="claim-status"]')).toBeVisible();
});

Then('the claim acknowledgement field should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="acknowledgement-text"]')).toBeVisible();
});

Then('the claim settlement field should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="settlement-text"]')).toBeVisible();
});

Then('the investigation field should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="investigation-text"]')).toBeVisible();
});

Then('the premium calculation should be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="premium-text"]')).toBeVisible();
});

Then('the premium should mention {string}', async function (value: string) {
  const page = this.page!;
  const locator = page.locator('[data-testid="premium-text"]');
  await expect(locator).toContainText(value);
});

Then('the page should show an error message', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="error-text"]')).toBeVisible();
});

Then('the page should show a success message', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="result-text"]')).toBeVisible();
});

Then('the card should not be visible', async function () {
  const page = this.page!;
  await expect(page.locator('[data-testid="product-card-1"]').count()).resolves.toBe(0);
});

Then('the scenario is not run', async function () {
  this.skip();
});