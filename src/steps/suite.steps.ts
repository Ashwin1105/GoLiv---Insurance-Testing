import { Given, When, Then} from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { pf } from './hooks';

Given('I am logged in to the InsureCo Portal', async () => {
  await pf.page.goto('http://host.docker.internal:5176');
  await pf.page.locator('[data-testid="login-username"]').fill('admin');
  await pf.page.locator('[data-testid="login-password"]').fill('admin123');
  await pf.page.locator('[data-testid="login-btn"]').click();
});

When('I enter a term plan entry age of {int} years', async (age: number) => {
  // Implement page navigation and input action
});

When('I enter a policy term of {int} years', async (term: number) => {
  // Implement page navigation and input action
});

When('I enter a sum assured of {int} lakhs', async (amount: number) => {
  // Implement page navigation and input action
});

When('I enter a non-smoker male profile', async () => {
  // Implement page navigation and input action
});

When('I enter a smoker profile', async () => {
  // Implement page navigation and input action
});

When('I enter a female profile', async () => {
  // Implement page navigation and input action
});

When('I enter empty input', async () => {
  // Implement page navigation and input action
});

When('I enter the maximum value', async () => {
  // Implement page navigation and input action
});

When('I enter an invalid format', async () => {
  // Implement page navigation and input action
});

When('I leave a field empty', async () => {
  // Implement page navigation and input action
});

When('I enter duplicate input', async () => {
  // Implement page navigation and input action
});

When('I enter an invalid data type', async () => {
  // Implement page navigation and input action
});

When('I enter an out-of-range value', async () => {
  // Implement page navigation and input action
});

When('I enter a null pointer', async () => {
  // Implement page navigation and input action
});

When('I wait for a timeout', async () => {
  // Implement page navigation and wait action
});

When('I access the portal concurrently', async () => {
  // Implement page navigation and concurrent access action
});

When('I access the portal and close it', async () => {
  // Implement page navigation and access action
});

When('I enter an edge case input', async () => {
  // Implement page navigation and input action
});

Then('the term plan entry age is accepted', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Term Plan Entry Age: 18 years');
});

Then('the policy term is accepted', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Policy Term: 5 years');
});

Then('the sum assured is accepted', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Sum Assured: 25 lakhs');
});

Then('the premium calculation is correct', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Premium: ');
});

Then('the premium loading is applied', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Premium Loading: ');
});

Then('the premium calculation is lower', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Premium: ');
});

Then('the input is rejected', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Invalid input');
});

Then('the input is accepted', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Valid input');
});

Then('the field is required', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Field is required');
});

Then('the timeout is handled', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Timeout handled');
});

Then('the portal handles concurrent access', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Concurrent access handled');
});

Then('the resources are released', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Resources released');
});

Then('the input is handled correctly', async () => {
  const actualText = await pf.page.locator('[data-testid="dashboard-page"]').textContent();
  expect(actualText).toContain('Input handled correctly');
});