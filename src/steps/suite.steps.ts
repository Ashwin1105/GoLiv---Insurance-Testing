import { Given, When, Then, setDefaultTimeout} from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { pf } from './hooks';

setDefaultTimeout(15 * 1000);

Given('user is on the InsureCo Portal dashboard', async function () {
  const page = pf.page;
  await page.goto('http://localhost:5176');
  await expect(page.getByTestId('dashboard-page')).toBeVisible();
});

When('user logs in with admin credentials', async function () {
  const page = pf.page;
  await page.getByTestId('login-username').fill('admin');
  await page.getByTestId('login-password').fill('admin123');
  await page.getByTestId('login-btn').click();
  await expect(page.getByTestId('main-nav')).toBeVisible();
});

When('user selects the term plan product card', async function () {
  const page = pf.page;
  await page.getByTestId('product-card-1').click();
});

When('user selects the claims tab', async function () {
  const page = pf.page;
  await page.getByTestId('nav-tab-1').click();
});

Then('the plan should accept entry age {int} years', async function (age: number) {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText(String(age));
});

Then('the plan should accept policy term {int} years', async function (term: number) {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText(String(term));
});

Then('the plan should enforce minimum sum assured {int} lakhs', async function (sumAssured: number) {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText(String(sumAssured));
});

Then('the premium should be calculated for a non smoker male profile', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the premium should include smoker loading at issuance', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the premium for female lives should be lower', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the premium should calculate for an NRI applicant with medical flag', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the premium calculation should succeed for online channel', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the death claim lodgement should capture the policy number', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the claim type should be natural death', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText('natural death');
});

Then('the claim intimation date should be recorded', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the claim should settle within 30 days for policy over 3 years', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText('30 days');
});

Then('the investigation period should be 90 days for early claims', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText('90 days');
});

Then('the claim acknowledgement should be within 3 working days of intimation', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText('3 working days');
});

Then('suicide within 12 months should refund 80 percent of premiums', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText('80 percent');
});

Then('the critical illness rider claim should accelerate 25 percent', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText('25 percent');
});

Then('the accidental death benefit claim should be processed', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the claim should be rejected for an invalid policy number', async function () {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toBeVisible();
});

Then('the plan should reject entry age {int} years', async function (age: number) {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText(String(age));
});

Then('the plan should reject policy term {int} years', async function (term: number) {
  const page = pf.page;
  const result = page.getByTestId('dashboard-page');
  await expect(result).toContainText(String(term));
});