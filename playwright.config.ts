import { defineConfig, devices } from '@playwright/test';

/**
 * Regression Test Cases Covered:
 * - C46: Verify term plan entry age minimum 18 years accepted (NOTRUN)
 * - C47: Verify term plan entry age maximum 65 years accepted (NOTRUN)
 * - C48: Verify policy term minimum 5 years is accepted (NOTRUN)
 * - C49: Verify policy term maximum 40 years is accepted (NOTRUN)
 * - C50: Verify minimum sum assured of 25 lakhs is enforced (NOTRUN)
 * - C51: Verify premium calculation for non-smoker male profile (NOTRUN)
 * - C52: Verify smoker premium loading is applied at issuance (NOTRUN)
 * - C53: Verify premium calculation for female lives is lower (NOTRUN)
 * - C213: Validate Null Plan Type Processing Behavior (NOTRUN)
 * - C214: Verify Scheme Validation with Special Characters and Extreme Lengths (NOTRUN)
 * - C215: Verify Age Band Calculation at Precision Boundaries (NOTRUN)
 * - C216: Verify Tenure Rejection Below Minimum Threshold (NOTRUN)
 * - C217: Validate Mutual Exclusion Constraints for Selected Schemes (NOTRUN)
 * - C218: Verify Post-Dated Plan Changes Constraints (NOTRUN)
 * - C219: Evaluate Zero Value Calculation Resilience (NOTRUN)
 * - C220: Verify Cancellation Concurrency with Payment Schedules (NOTRUN)
 * - C221: Validate Expiry Boundary Resolution (NOTRUN)
 * - C222: Verify Database Lock During Scheme Mutate Execution (NOTRUN)
 * - C223: Verify Overlapping Age Band Configuration Rules (NOTRUN)
 * - C224: Verify Configuration Fallback Logic (NOTRUN)
 * - TC_EC_001: Validate Null Plan Type Processing Behavior (NOTRUN)
 * - TC_EC_002: Verify Scheme Validation with Special Characters and Extreme Lengths (NOTRUN)
 * - TC_EC_003: Verify Age Band Calculation at Precision Boundaries (NOTRUN)
 * - TC_EC_004: Verify Tenure Rejection Below Minimum Threshold (NOTRUN)
 * - TC_EC_005: Validate Mutual Exclusion Constraints for Selected Schemes (NOTRUN)
 * - TC_EC_006: Verify Post-Dated Plan Changes Constraints (NOTRUN)
 * - TC_EC_007: Evaluate Zero Value Calculation Resilience (NOTRUN)
 * - TC_EC_008: Verify Cancellation Concurrency with Payment Schedules (NOTRUN)
 * - TC_EC_009: Validate Expiry Boundary Resolution (NOTRUN)
 * - TC_EC_010: Verify Database Lock During Scheme Mutate Execution (NOTRUN)
 * - TC_EC_011: Verify Overlapping Age Band Configuration Rules (NOTRUN)
 * - TC_EC_012: Verify Configuration Fallback Logic (NOTRUN)
 */

export default defineConfig({
  testDir: './tests',
  timeout: 30 * 1000,
  expect: {
    timeout: 5000
  },
  fullyParallel: false,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  workers: 1,
  reporter: [
    ['html'],
    ['allure-playwright']
  ],
  use: {
    baseURL: 'http://host.docker.internal:5176',
    headless: false,
    screenshot: 'on-failure',
    trace: 'on-first-retry',
  },
  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome'] },
    }
  ],
});