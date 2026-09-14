import { Page, Locator } from '@playwright/test';

/**
 * BasePage provides a common wrapper around Playwright's Page object
 * and a convenient locator helper.
 */
export class BasePage {
  protected readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  /**
   * Returns a Playwright Locator for the given selector.
   *
   * @param selector - CSS or data‑test selector string
   */
  protected loc(selector: string): Locator {
    return this.page.locator(selector);
  }
}

/**
 * List of all test case IDs used in the suite.
 */
export const TEST_CASE_IDS = [
  'TC_LIF_011',
  'TC_LIF_012',
  'TC_LIF_013',
  'TC_LIF_014',
  'TC_LIF_015',
  'TC_LIF_016',
  'TC_LIF_017',
  'TC_LIF_018',
  'TC_LIF_019',
  'TC_LIF_020',
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
] as const;

/**
 * Expected result texts for test cases that define an explicit
 * "Expected:" line. The value is the core message that should be
 * asserted against the UI.
 */
export const EXPECTED: Record<string, string> = {
  // Not‑run (negative) test cases with explicit expectations
  TC_EC_001: 'Claim type is mandatory',
  TC_EC_002: 'Policy number is required',
  TC_EC_003: 'Invalid policy number format',
  TC_EC_004: 'Intimation date is required',
  TC_EC_005: 'Intimation date cannot be in the future',
  TC_EC_006: 'Investigation workflow (first‑3‑year process) triggered',
  TC_EC_007: 'SLA breach alert for AC_003',
  TC_EC_008: 'Investigation recorded as within SLA',
  TC_EC_009: 'SLA breach alert for AC_004',
  TC_EC_010: 'Acknowledgment compliant with AC_005',
  TC_EC_011: 'Breach alert for AC_005',
  TC_EC_012: 'Refund amount INR 120,000',
  TC_EC_013: 'Refund amount INR 200,000',
  TC_EC_014: 'Refund amount INR 180,000',
  TC_EC_015: 'Accelerated benefit INR 125,000',
  TC_EC_016: 'Accelerated benefit INR 625,000',
  TC_EC_017: 'Payout limited to INR 1,00,00,000',
  TC_EC_018: 'Total payout INR 5,50,00,000',
  TC_EC_019: 'Invalid policy number',
  TC_EC_020: 'Policy number not found',
  // Lifeline test cases without explicit expectations – placeholders
  TC_LIF_011: '',
  TC_LIF_012: '',
  TC_LIF_013: '',
  TC_LIF_014: '',
  TC_LIF_015: '',
  TC_LIF_016: '',
  TC_LIF_017: '',
  TC_LIF_018: '',
  TC_LIF_019: '',
  TC_LIF_020: '',
};