import { Page, Locator } from '@playwright/test';

export class InsureCoPortalPage {
  readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  // Login elements
  loginUsername(): Locator {
    return this.page.locator('[data-testid="login-username"]');
  }

  loginPassword(): Locator {
    return this.page.locator('[data-testid="login-password"]');
  }

  loginButton(): Locator {
    return this.page.locator('[data-testid="login-btn"]');
  }

  // Navigation elements
  mainNav(): Locator {
    return this.page.locator('[data-testid="main-nav"]');
  }

  navTab0(): Locator {
    return this.page.locator('[data-testid="nav-tab-0"]');
  }

  navTab1(): Locator {
    return this.page.locator('[data-testid="nav-tab-1"]');
  }

  navTab2(): Locator {
    return this.page.locator('[data-testid="nav-tab-2"]');
  }

  navTab3(): Locator {
    return this.page.locator('[data-testid="nav-tab-3"]');
  }

  navTab4(): Locator {
    return this.page.locator('[data-testid="nav-tab-4"]');
  }

  logoutButton(): Locator {
    return this.page.locator('[data-testid="logout-btn"]');
  }

  // Dashboard and product cards
  dashboardPage(): Locator {
    return this.page.locator('[data-testid="dashboard-page"]');
  }

  productCard1(): Locator {
    return this.page.locator('[data-testid="product-card-1"]');
  }

  productCard2(): Locator {
    return this.page.locator('[data-testid="product-card-2"]');
  }

  productCard3(): Locator {
    return this.page.locator('[data-testid="product-card-3"]');
  }

  productCard4(): Locator {
    return this.page.locator('[data-testid="product-card-4"]');
  }
}

/**
 * Test case definitions.
 * For cases where explicit Steps and Expected values are provided,
 * they are captured here. For others, only the ID is listed.
 */
export const TEST_CASES: Record<
  string,
  { steps?: string[]; expected?: string }
> = {
  TC_LIF_011: {},
  TC_LIF_012: {},
  TC_LIF_013: {},
  TC_LIF_014: {},
  TC_LIF_015: {},
  TC_LIF_016: {},
  TC_LIF_017: {},
  TC_LIF_018: {},
  TC_LIF_019: {},
  TC_LIF_020: {},
  TC_EC_001: {
    steps: [
      'Open claim intimation screen',
      'Leave claim type field blank',
      'Fill policy number and other mandatory fields',
      'Submit claim',
      'Observe system response',
    ],
    expected:
      "System displays error 'Claim type is mandatory' and does not accept the claim.",
  },
  TC_EC_002: {
    steps: [
      'Access claim intimation form',
      'Enter claim type but leave policy number empty',
      'Provide claimant details and submit',
    ],
    expected:
      "System returns error 'Policy number is required' and prevents claim lodgement.",
  },
  TC_EC_003: {
    steps: [
      'Open claim entry screen',
      'Enter claim type',
      "Input policy number as '@#%$!123'",
      'Submit claim',
    ],
    expected:
      "System shows validation error 'Invalid policy number format' and does not accept the claim.",
  },
  TC_EC_004: {
    steps: [
      'Open claim lodgement screen',
      'Leave intimation date field blank',
      'Complete other mandatory fields and submit',
    ],
    expected:
      "System displays error 'Intimation date is required' and prevents submission.",
  },
  TC_EC_005: {
    steps: [
      'Open claim entry form',
      'Enter intimation date as 2026-10-01',
      'Fill other required fields and submit',
    ],
    expected:
      "System returns error 'Intimation date cannot be in the future' and blocks submission.",
  },
  TC_EC_006: {
    steps: [
      'Lodge death claim',
      'System records claim',
      'Observe payment processing timeline',
    ],
    expected:
      'System routes claim to investigation workflow (first‑3‑year process) instead of 30‑day lump‑sum payment.',
  },
  TC_EC_007: {
    steps: [
      'Process claim payment on 2026-09-02 (31 days after docs receipt)',
      'Check SLA monitoring module',
    ],
    expected:
      'System raises SLA breach alert and logs violation of AC_003.',
  },
  TC_EC_008: {
    steps: [
      'Perform investigation activities',
      'Mark investigation as completed on 2026-08-30 (90th day)',
      'Verify SLA status',
    ],
    expected:
      "System records investigation as 'within SLA' and no breach is raised.",
  },
  TC_EC_009: {
    steps: [
      'Complete investigation on 2026-07-01 (91st day)',
      'Review SLA monitoring report',
    ],
    expected:
      'System generates SLA breach alert for AC_004.',
  },
  TC_EC_010: {
    steps: [
      'System sends acknowledgment email on Monday, 2026-09-12',
      'Verify acknowledgment timestamp against SLA rule',
    ],
    expected:
      'System marks acknowledgment as compliant with AC_005.',
  },
  TC_EC_011: {
    steps: [
      'System dispatches acknowledgment on Friday, 2026-09-09 (fourth working day)',
      'Check SLA compliance module',
    ],
    expected:
      'System generates breach alert for AC_005.',
  },
  TC_EC_012: {
    steps: [
      'Submit suicide death claim',
      'System identifies suicide within 12‑month window',
      'System computes refund amount',
    ],
    expected:
      'Refund amount displayed as INR 120,000 (80% of premiums) and claim processed accordingly.',
  },
  TC_EC_013: {
    steps: [
      'Lodge suicide claim',
      'System calculates policy age as 12 months',
      'System determines applicable refund percentage',
    ],
    expected:
      'System refunds 100% of premiums (INR 200,000) as per AC_006.',
  },
  TC_EC_014: {
    steps: [
      'Submit claim with suicide cause',
      'System checks policy age >12 months',
      'System calculates refund amount',
    ],
    expected:
      'Refund amount calculated as INR 180,000 (100% of premiums).',
  },
  TC_EC_015: {
    steps: [
      'Submit claim with diagnosis date equal to policy issuance date',
      'System calculates accelerated amount',
      'Verify payout includes INR 125,000 (25% of SA) as accelerated benefit',
    ],
    expected:
      'Claim approved; payout amount includes INR 125,000 accelerated benefit in addition to any remaining benefits.',
  },
  TC_EC_016: {
    steps: [
      'Lodge claim indicating diagnosis date',
      'System computes 25% of INR 2,500,000',
      'Verify accelerated amount equals INR 625,000',
    ],
    expected:
      'Claim approved; accelerated benefit of INR 625,000 is added to the payout.',
  },
  TC_EC_017: {
    steps: [
      'Submit accidental death claim',
      'System aggregates base SA and rider SA',
      'System applies INR 1 Crore ceiling',
      'Verify payout amount',
    ],
    expected:
      'Payout limited to INR 1,00,00,000 despite total calculated amount of INR 10,50,00,000.',
  },
  TC_EC_018: {
    steps: [
      'Lodge accidental death claim',
      'System adds base SA and rider SA',
      'Verify total does not exceed INR 1 Crore',
      'Confirm full payout of INR 5,50,00,000',
    ],
    expected:
      'Claim approved; total payout equals INR 5,50,00,000.',
  },
  TC_EC_019: {
    steps: [
      'Attempt to lodge a claim with the malformed policy number',
      'System validates policy number format',
      'System returns error message',
    ],
    expected: 'Claim is rejected with error "Invalid policy number".',
  },
  TC_EC_020: {
    steps: [
      'Submit claim with the non‑existent policy number',
      'System performs lookup against policy repository',
      'System returns error message',
    ],
    expected: 'Claim is rejected with error "Policy number not found".',
  },
};