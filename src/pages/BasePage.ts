import { Page, Locator } from '@playwright/test';

type TestStatus = 'PASS' | 'FAIL' | 'NOTRUN';

interface TestCase {
  id: string;
  status: TestStatus;
  title: string;
  steps?: string[];
  expected?: string;
}

/**
 * Central repository of all test cases for the InsureCo Portal.
 * The map is keyed by test case ID.
 */
const TEST_CASES: Record<string, TestCase> = {
  TC_LIF_011: {
    id: 'TC_LIF_011',
    status: 'PASS',
    title: 'Verify death claim lodgement captures policy number',
  },
  TC_LIF_012: {
    id: 'TC_LIF_012',
    status: 'PASS',
    title: 'Verify claim type selection for natural death',
  },
  TC_LIF_013: {
    id: 'TC_LIF_013',
    status: 'PASS',
    title: 'Verify claim intimation date is recorded',
  },
  TC_LIF_014: {
    id: 'TC_LIF_014',
    status: 'PASS',
    title: 'Verify claim settlement within 30 days for policy over 3 years',
  },
  TC_LIF_015: {
    id: 'TC_LIF_015',
    status: 'PASS',
    title: 'Verify investigation period of 90 days for early claims',
  },
  TC_LIF_016: {
    id: 'TC_LIF_016',
    status: 'FAIL',
    title: 'Verify claim acknowledgement within 3 working days of intimation',
  },
  TC_LIF_017: {
    id: 'TC_LIF_017',
    status: 'PASS',
    title: 'Verify suicide within 12 months refunds 80 percent of premiums',
  },
  TC_LIF_018: {
    id: 'TC_LIF_018',
    status: 'PASS',
    title: 'Verify critical illness rider claim acceleration of 25 percent',
  },
  TC_LIF_019: {
    id: 'TC_LIF_019',
    status: 'PASS',
    title: 'Verify accidental death benefit claim processing',
  },
  TC_LIF_020: {
    id: 'TC_LIF_020',
    status: 'PASS',
    title: 'Verify claim rejection for invalid policy number',
  },
  TC_EC_001: {
    id: 'TC_EC_001',
    status: 'NOTRUN',
    title: 'Validate rejection when claim type is omitted',
    steps: [
      'Step 1: Open claim intimation screen',
      'Step 2: Leave claim type field blank',
      'Step 3: Fill policy number and other mandatory fields',
      'Step 4: Submit claim',
      'Step 5: Observe system response',
    ],
    expected: "System displays error 'Claim type is mandatory' and does not accept the claim.",
  },
  TC_EC_002: {
    id: 'TC_EC_002',
    status: 'NOTRUN',
    title: 'Validate rejection when policy number is omitted',
    steps: [
      'Step 1: Access claim intimation form',
      'Step 2: Enter claim type but leave policy number empty',
      'Step 3: Provide claimant details and submit',
    ],
    expected: "System returns error 'Policy number is required' and prevents claim lodgement.",
  },
  TC_EC_003: {
    id: 'TC_EC_003',
    status: 'NOTRUN',
    title: 'Reject claim with non‑alphanumeric policy number',
    steps: [
      'Step 1: Open claim entry screen',
      "Step 2: Enter claim type",
      "Step 3: Input policy number as '@#%$!123'",
      'Step 4: Submit claim',
    ],
    expected: "System shows validation error 'Invalid policy number format' and does not accept the claim.",
  },
  TC_EC_004: {
    id: 'TC_EC_004',
    status: 'NOTRUN',
    title: 'System rejects claim without intimation date',
    steps: [
      'Step 1: Open claim lodgement screen',
      'Step 2: Leave intimation date field blank',
      'Step 3: Complete other mandatory fields and submit',
    ],
    expected: "System displays error 'Intimation date is required' and prevents submission.",
  },
  TC_EC_005: {
    id: 'TC_EC_005',
    status: 'NOTRUN',
    title: 'Validate rejection of future-dated intimation',
    steps: [
      'Step 1: Open claim entry form',
      'Step 2: Enter intimation date as 2026-10-01',
      'Step 3: Fill other required fields and submit',
    ],
    expected: "System returns error 'Intimation date cannot be in the future' and blocks submission.",
  },
  TC_EC_006: {
    id: 'TC_EC_006',
    status: 'NOTRUN',
    title: 'Verify no lump‑sum SLA for 3‑year‑old policy',
    steps: [
      'Step 1: Lodge death claim',
      'Step 2: System records claim',
      'Step 3: Observe payment processing timeline',
    ],
    expected: 'System routes claim to investigation workflow (first‑3‑year process) instead of 30‑day lump‑sum payment.',
  },
  TC_EC_007: {
    id: 'TC_EC_007',
    status: 'NOTRUN',
    title: 'Detect late lump‑sum payment beyond 30‑day SLA',
    steps: [
      'Step 1: Process claim payment on 2026-09-02 (31 days after docs receipt)',
      'Step 2: Check SLA monitoring module',
    ],
    expected: 'System raises SLA breach alert and logs violation of AC_003.',
  },
  TC_EC_008: {
    id: 'TC_EC_008',
    status: 'NOTRUN',
    title: 'Validate on‑time investigation at 90‑day limit',
    steps: [
      'Step 1: Perform investigation activities',
      'Step 2: Mark investigation as completed on 2026-08-30 (90th day)',
      'Step 3: Verify SLA status',
    ],
    expected: "System records investigation as 'within SLA' and no breach is raised.",
  },
  TC_EC_009: {
    id: 'TC_EC_009',
    status: 'NOTRUN',
    title: 'Detect SLA breach when investigation exceeds 90 days',
    steps: [
      'Step 1: Complete investigation on 2026-07-01 (91st day)',
      'Step 2: Review SLA monitoring report',
    ],
    expected: 'System generates SLA breach alert for AC_004.',
  },
  TC_EC_010: {
    id: 'TC_EC_010',
    status: 'NOTRUN',
    title: 'Validate acknowledgment on third working day',
    steps: [
      'Step 1: System sends acknowledgment email on Monday, 2026-09-12',
      'Step 2: Verify acknowledgment timestamp against SLA rule',
    ],
    expected: 'System marks acknowledgment as compliant with AC_005.',
  },
  TC_EC_011: {
    id: 'TC_EC_011',
    status: 'NOTRUN',
    title: 'Detect late acknowledgment beyond 3 working days',
    steps: [
      'Step 1: System dispatches acknowledgment on Friday, 2026-09-09 (fourth working day)',
      'Step 2: Check SLA compliance module',
    ],
    expected: 'System generates breach alert for AC_005.',
  },
  TC_EC_012: {
    id: 'TC_EC_012',
    status: 'NOTRUN',
    title: 'Validate 80% refund for suicide claim at 11 months',
    steps: [
      'Step 1: Submit suicide death claim',
      'Step 2: System identifies suicide within 12‑month window',
      'Step 3: System computes refund amount',
    ],
    expected: 'Refund amount displayed as INR 120,000 (80% of premiums) and claim processed accordingly.',
  },
  TC_EC_013: {
    id: 'TC_EC_013',
    status: 'NOTRUN',
    title: 'Validate full refund for suicide at 12‑month threshold',
    steps: [
      'Step 1: Lodge suicide claim',
      'Step 2: System calculates policy age as 12 months',
      'Step 3: System determines applicable refund percentage',
    ],
    expected: 'System refunds 100% of premiums (INR 200,000) as per AC_006.',
  },
  TC_EC_014: {
    id: 'TC_EC_014',
    status: 'NOTRUN',
    title: 'Confirm full refund for suicide claim beyond 12 months',
    steps: [
      'Step 1: Submit claim with suicide cause',
      'Step 2: System checks policy age >12 months',
      'Step 3: System calculates refund amount',
    ],
    expected: 'Refund amount calculated as INR 180,000 (100% of premiums).',
  },
  TC_EC_015: {
    id: 'TC_EC_015',
    status: 'NOTRUN',
    title: 'Accelerate 25% SA on diagnosis at policy inception',
    steps: [
      'Step 1: Submit claim with diagnosis date equal to policy issuance date',
      'Step 2: System calculates accelerated amount',
      'Step 3: Verify payout includes INR 125,000 (25% of SA) as accelerated benefit',
    ],
    expected: 'Claim approved; payout amount includes INR 125,000 accelerated benefit in addition to any remaining benefits.',
  },
  TC_EC_016: {
    id: 'TC_EC_016',
    status: 'NOTRUN',
    title: 'Accelerate 25% SA on maximum SA policy',
    steps: [
      'Step 1: Lodge claim indicating diagnosis date',
      'Step 2: System computes 25% of INR 2,500,000',
      'Step 3: Verify accelerated amount equals INR 625,000',
    ],
    expected: 'Claim approved; accelerated benefit of INR 625,000 is added to the payout.',
  },
  TC_EC_017: {
    id: 'TC_EC_017',
    status: 'NOTRUN',
    title: 'Cap accidental death payout at INR 1 Crore',
    steps: [
      'Step 1: Submit accidental death claim',
      'Step 2: System aggregates base SA and rider SA',
      'Step 3: System applies INR 1 Crore ceiling',
      'Step 4: Verify payout amount',
    ],
    expected: 'Payout limited to INR 1,00,00,000 despite total calculated amount of INR 10,50,00,000.',
  },
  TC_EC_018: {
    id: 'TC_EC_018',
    status: 'NOTRUN',
    title: 'Full accidental death payout under cap',
    steps: [
      'Step 1: Lodge accidental death claim',
      'Step 2: System adds base SA and rider SA',
      'Step 3: Verify total does not exceed INR 1 Crore',
      'Step 4: Confirm full payout of INR 5,50,00,000',
    ],
    expected: 'Claim approved; total payout equals INR 5,50,00,000.',
  },
  TC_EC_019: {
    id: 'TC_EC_019',
    status: 'NOTRUN',
    title: 'Invalid policy number format rejection',
    steps: [
      'Step 1: Attempt to lodge a claim with the malformed policy number',
      'Step 2: System validates policy number format',
      'Step 3: System returns error message',
    ],
    expected: 'Claim is rejected with error "Invalid policy number".',
  },
  TC_EC_020: {
    id: 'TC_EC_020',
    status: 'NOTRUN',
    title: 'Non‑existent policy number rejection',
    steps: [
      'Step 1: Submit claim with the non‑existent policy number',
      'Step 2: System performs lookup against policy repository',
      'Step 3: System returns error message',
    ],
    expected: 'Claim is rejected with error "Policy number not found".',
  },
};

/**
 * BasePage provides a thin wrapper around Playwright's Page object
 * and a convenient locator helper.
 */
export class BasePage {
  constructor(public readonly page: Page) {}

  /**
   * Returns a strict locator for the given selector.
   * The selector must be one of the approved data-testid values.
   *
   * @param selector CSS selector (e.g., '[data-testid="login-btn"]')
   */
  loc(selector: string): Locator {
    return this.page.locator(selector);
  }

  /**
   * Retrieves the test case definition by its identifier.
   *
   * @param id Test case ID (e.g., 'TC_LIF_011')
   */
  getTestCase(id: string): TestCase | undefined {
    return TEST_CASES[id];
  }
}