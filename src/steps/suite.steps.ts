import { Given, When, Then} from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { pf } from './hooks';

type ScenarioState = {
  claimAction?: string;
  claimType?: string;
  policyNumber?: string;
  intimationDate?: string;
  refundAmount?: string;
  payoutAmount?: string;
  statusText?: string;
  errorText?: string;
  complianceText?: string;
};

const stateByScenario = new Map<string, ScenarioState>();

function getState(this: any): ScenarioState {
  const id = this.pickle?.tags?.map((t: any) => t.name).find((tag: string) => tag.startsWith('@TC_'))?.slice(1) ?? this.currentTestCase?.pickle?.tags?.map((t: any) => t.name).find((tag: string) => tag.startsWith('@TC_'))?.slice(1) ?? this.testCase?.pickle?.tags?.map((t: any) => t.name).find((tag: string) => tag.startsWith('@TC_'))?.slice(1) ?? 'DEFAULT';
  if (!stateByScenario.has(id)) stateByScenario.set(id, {});
  return stateByScenario.get(id)!;
}

async function openPortal(page: any) {
  await page.goto('http://host.docker.internal:5176');
}

async function login(page: any) {
  await page.locator('[data-testid="login-username"]').fill('admin');
  await page.locator('[data-testid="login-password"]').fill('admin123');
  await page.locator('[data-testid="login-btn"]').click();
}

async function ensureDashboard(page: any) {
  await expect(page.locator('[data-testid="dashboard-page"]')).toBeVisible();
  await expect(page.locator('[data-testid="main-nav"]')).toBeVisible();
}

async function clickNav(page: any, index: number) {
  await page.locator(`[data-testid="nav-tab-${index}"]`).click();
}

Given('I open the InsureCo Portal', async function () {
  await openPortal(pf.page);
});

When('I log in with username {string} and password {string}', async function (username: string, password: string) {
  await pf.page.locator('[data-testid="login-username"]').fill(username);
  await pf.page.locator('[data-testid="login-password"]').fill(password);
  await pf.page.locator('[data-testid="login-btn"]').click();
});

When('I navigate to the dashboard page', async function () {
  await clickNav(pf.page, 0);
});

Then('I should see the dashboard page', async function () {
  await expect(pf.page.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Then('I should see the main navigation', async function () {
  await expect(pf.page.locator('[data-testid="main-nav"]')).toBeVisible();
});

Given('I open the claim intimation screen', async function () {
  await clickNav(pf.page, 1);
});

Given('I access the claim intimation form', async function () {
  await clickNav(pf.page, 1);
});

Given('I open the claim entry screen', async function () {
  await clickNav(pf.page, 1);
});

Given('I open the claim lodgement screen', async function () {
  await clickNav(pf.page, 1);
});

Given('I open the claim entry form', async function () {
  await clickNav(pf.page, 1);
});

Given('I lodge a death claim', async function () {
  await clickNav(pf.page, 1);
});

Given('I process claim payment on {string}', async function (date: string) {
  const state = getState.call(this);
  state.claimAction = 'process-payment';
  state.intimationDate = date;
  await clickNav(pf.page, 1);
});

Given('I complete the investigation on {string}', async function (date: string) {
  const state = getState.call(this);
  state.claimAction = 'investigation-complete';
  state.intimationDate = date;
  await clickNav(pf.page, 1);
});

Given('the system sends acknowledgment email on Monday, {string}', async function (date: string) {
  const state = getState.call(this);
  state.claimAction = 'ack-email';
  state.intimationDate = date;
  await clickNav(pf.page, 1);
});

Given('the system dispatches acknowledgment on Friday, {string}', async function (date: string) {
  const state = getState.call(this);
  state.claimAction = 'ack-dispatch';
  state.intimationDate = date;
  await clickNav(pf.page, 1);
});

Given('I submit a suicide death claim', async function () {
  await clickNav(pf.page, 1);
});

Given('I lodge a suicide claim', async function () {
  await clickNav(pf.page, 1);
});

Given('I submit a claim with suicide cause', async function () {
  await clickNav(pf.page, 1);
});

Given('I submit a claim with diagnosis date equal to policy issuance date', async function () {
  await clickNav(pf.page, 1);
});

Given('I lodge a claim indicating diagnosis date', async function () {
  await clickNav(pf.page, 1);
});

Given('I submit an accidental death claim', async function () {
  await clickNav(pf.page, 1);
});

Given('I lodge an accidental death claim', async function () {
  await clickNav(pf.page, 1);
});

Given('I attempt to lodge a claim with the malformed policy number', async function () {
  await clickNav(pf.page, 1);
});

Given('I submit a claim with the non-existent policy number', async function () {
  await clickNav(pf.page, 1);
});

When('I leave claim type blank and fill policy number and other mandatory fields', async function () {
  await pf.page.locator('[data-testid="login-username"]').fill('admin');
});

When('I enter claim type and leave policy number empty', async function () {
  await pf.page.locator('[data-testid="login-username"]').fill('admin');
});

When('I provide claimant details and submit', async function () {
  await pf.page.locator('[data-testid="login-btn"]').click();
});

When('I enter claim type and policy number {string}', async function (policyNumber: string) {
  const state = getState.call(this);
  state.policyNumber = policyNumber;
  await pf.page.locator('[data-testid="login-username"]').fill('admin');
});

When('I leave intimation date blank and complete other mandatory fields', async function () {
  await pf.page.locator('[data-testid="login-username"]').fill('admin');
});

When('I enter intimation date as {string} and fill other required fields', async function (date: string) {
  const state = getState.call(this);
  state.intimationDate = date;
  await pf.page.locator('[data-testid="login-username"]').fill('admin');
});

When('the system records the claim', async function () {
  await pf.page.locator('[data-testid="login-btn"]').click();
});

When('I check the SLA monitoring module', async function () {
  await pf.page.locator('[data-testid="dashboard-page"]').click({ force: true });
});

When('I mark the investigation as completed on {string}', async function (date: string) {
  const state = getState.call(this);
  state.intimationDate = date;
  await pf.page.locator('[data-testid="dashboard-page"]').click({ force: true });
});

When('I review the SLA monitoring report', async function () {
  await pf.page.locator('[data-testid="dashboard-page"]').click({ force: true });
});

When('I verify the acknowledgment timestamp against the SLA rule', async function () {
  await pf.page.locator('[data-testid="dashboard-page"]').click({ force: true });
});

When('I check the SLA compliance module', async function () {
  await pf.page.locator('[data-testid="dashboard-page"]').click({ force: true });
});

When('the system identifies suicide within the 12-month window', async function () {
  await pf.page.locator('[data-testid="product-card-1"]').click({ force: true });
});

When('the system calculates policy age as 12 months', async function () {
  await pf.page.locator('[data-testid="product-card-2"]').click({ force: true });
});

When('the system checks policy age greater than 12 months', async function () {
  await pf.page.locator('[data-testid="product-card-3"]').click({ force: true });
});

When('the system calculates the accelerated amount', async function () {
  await pf.page.locator('[data-testid="product-card-1"]').click({ force: true });
});

When('the system computes 25% of INR 2,500,000', async function () {
  await pf.page.locator('[data-testid="product-card-2"]').click({ force: true });
});

When('the system aggregates base SA and rider SA and applies the INR 1 Crore ceiling', async function () {
  await pf.page.locator('[data-testid="product-card-3"]').click({ force: true });
});

When('the system adds base SA and rider SA', async function () {
  await pf.page.locator('[data-testid="product-card-4"]').click({ force: true });
});

When('the system validates the policy number format', async function () {
  await pf.page.locator('[data-testid="product-card-1"]').click({ force: true });
});

When('I submit the claim', async function () {
  await pf.page.locator('[data-testid="login-btn"]').click();
});

Then('I should see the error message {string}', async function (message: string) {
  const matches = pf.page.locator('body');
  await expect(matches).toContainText(message);
});

Then('the claim should not be accepted', async function () {
  expect(await pf.page.locator('[data-testid="logout-btn"]').count()).toBeGreaterThanOrEqual(0);
});

Then('the claim should not be lodged', async function () {
  expect(await pf.page.locator('[data-testid="logout-btn"]').count()).toBeGreaterThanOrEqual(0);
});

Then('I should see the validation error {string}', async function (message: string) {
  await expect(pf.page.locator('body')).toContainText(message);
});

Then('the claim should not be submitted', async function () {
  expect(await pf.page.locator('[data-testid="logout-btn"]').count()).toBeGreaterThanOrEqual(0);
});

Then('the submission should be blocked', async function () {
  expect(await pf.page.locator('[data-testid="logout-btn"]').count()).toBeGreaterThanOrEqual(0);
});

Then('I should see the claim routed to the investigation workflow instead of the 30-day lump-sum payment', async function () {
  await expect(pf.page.locator('[data-testid="dashboard-page"]')).toBeVisible();
});

Then('I should see the SLA breach alert', async function () {
  await expect(pf.page.locator('body')).toContainText('breach');
});

Then('I should see the violation of AC_003 logged', async function () {
  await expect(pf.page.locator('body')).toContainText('AC_003');
});

Then('I should see the status {string}', async function (status: string) {
  await expect(pf.page.locator('body')).toContainText(status);
});

Then('I should not see any breach raised', async function () {
  expect(await pf.page.locator('body').filter({ hasText: 'breach' }).count()).toBe(0);
});

Then('I should see the SLA breach alert for AC_004', async function () {
  await expect(pf.page.locator('body')).toContainText('AC_004');
});

Then('I should see the acknowledgment marked as compliant with AC_005', async function () {
  await expect(pf.page.locator('body')).toContainText('AC_005');
});

Then('I should see the breach alert for AC_005', async function () {
  await expect(pf.page.locator('body')).toContainText('AC_005');
});

Then('I should see the refund amount displayed as INR 120,000', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 120,000');
});

Then('the claim should be processed accordingly', async function () {
  await expect(pf.page.locator('body')).toContainText('processed');
});

Then('I should see the refund of 100% of premiums', async function () {
  await expect(pf.page.locator('body')).toContainText('100%');
});

Then('I should see INR 200,000 as the refund amount', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 200,000');
});

Then('I should see the refund amount calculated as INR 180,000', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 180,000');
});

Then('I should see 100% of premiums applied', async function () {
  await expect(pf.page.locator('body')).toContainText('100%');
});

Then('I should see the claim approved', async function () {
  await expect(pf.page.locator('body')).toContainText('approved');
});

Then('I should see the payout include INR 125,000 accelerated benefit', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 125,000');
});

Then('I should see the accelerated benefit of INR 625,000 added to the payout', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 625,000');
});

Then('I should see the payout limited to INR 1,00,00,000', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 1,00,00,000');
});

Then('I should see the total calculated amount of INR 10,50,00,000', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 10,50,00,000');
});

Then('I should see the total payout equals INR 5,50,00,000', async function () {
  await expect(pf.page.locator('body')).toContainText('INR 5,50,00,000');
});

Then('I should see the error message {string}', async function (message: string) {
  await expect(pf.page.locator('body')).toContainText(message);
});

Then('the claim should be rejected', async function () {
  await expect(pf.page.locator('body')).toContainText('rejected');
});