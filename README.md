# InsureCo Portal Automation README

## Overview

This repository contains end-to-end automation for the InsureCo Portal using Playwright, TypeScript, Cucumber BDD, Allure reporting, Jenkins, and GitHub Actions.

The application under test is a single-page tabbed portal at `http://localhost:5176`. Navigation must be performed by clicking the provided tab/card controls; there are no URL routes for switching screens.

## Test scope

The regression suite includes the following 58 scenarios:

- TC_LIF_001 | PASS | Verify term plan entry age minimum 18 years accepted
- TC_LIF_002 | PASS | Verify term plan entry age maximum 65 years accepted
- TC_LIF_003 | PASS | Verify policy term minimum 5 years is accepted
- TC_LIF_004 | PASS | Verify policy term maximum 40 years is accepted
- TC_LIF_005 | PASS | Verify minimum sum assured of 25 lakhs is enforced
- TC_LIF_006 | PASS | Verify premium calculation for non-smoker male profile
- TC_LIF_007 | PASS | Verify smoker premium loading is applied at issuance
- TC_LIF_008 | PASS | Verify premium calculation for female lives is lower
- TC_LIF_009 | PASS | Verify NRI applicant premium calculation with medical flag
- TC_LIF_010 | PASS | Verify online channel premium calculation succeeds
- TC_LIF_011 | PASS | Verify death claim lodgement captures policy number
- TC_LIF_012 | PASS | Verify claim type selection for natural death
- TC_LIF_013 | PASS | Verify claim intimation date is recorded
- TC_LIF_014 | PASS | Verify claim settlement within 30 days for policy over 3 years
- TC_LIF_015 | PASS | Verify investigation period of 90 days for early claims
- TC_LIF_016 | FAIL | Verify claim acknowledgement within 3 working days of intimation
- TC_LIF_017 | PASS | Verify suicide within 12 months refunds 80 percent of premiums
- TC_LIF_018 | PASS | Verify critical illness rider claim acceleration of 25 percent
- TC_LIF_019 | PASS | Verify accidental death benefit claim processing
- TC_LIF_020 | PASS | Verify claim rejection for invalid policy number
- TC_EC_001 | NOTRUN | Life Term Insurance entry age 17 years should be rejected
- TC_EC_002 | NOTRUN | Life Term Insurance entry age 18 years should be accepted
- TC_EC_003 | NOTRUN | Life Term Insurance entry age 66 years should be rejected
- TC_EC_004 | NOTRUN | Life Term Insurance entry age 65 years should be accepted
- TC_EC_005 | NOTRUN | Life Term Insurance policy term 4 years should be rejected
- TC_EC_006 | NOTRUN | Life Term Insurance policy term 5 years should be accepted
- TC_EC_007 | NOTRUN | Life Term Insurance policy term 41 years should be rejected
- TC_EC_008 | NOTRUN | Life Term Insurance policy term 40 years should be accepted
- TC_EC_009 | NOTRUN | Life Term Insurance sum assured INR 24,99,999 should be rejected
- TC_EC_010 | NOTRUN | Life Term Insurance sum assured INR 25,00,000 should be accepted
- TC_EC_011 | NOTRUN | Life Term Insurance high sum assured should be permitted subject to underwriting
- TC_EC_012 | NOTRUN | Life Term Insurance extreme sum assured should not be blocked by a maximum cap
- TC_EC_013 | NOTRUN | Non-smoker discount retained in Offline channel pricing
- TC_EC_014 | NOTRUN | Smoker status amendment before issuance triggers loading
- TC_EC_015 | NOTRUN | Online channel premium calculation works for eligible profile
- TC_EC_016 | NOTRUN | Offline channel premium calculation works for eligible profile
- TC_EC_017 | NOTRUN | Death claim lodgement captures mandatory claim type and policy number
- TC_EC_018 | NOTRUN | Death claim with missing policy number is rejected at lodgement
- TC_EC_019 | NOTRUN | Record claim intimation date for same-day intimation
- TC_EC_020 | NOTRUN | Record claim intimation date for delayed intimation
- TC_EC_021 | NOTRUN | Lump sum settlement within 30 days for policy older than 3 years
- TC_EC_022 | NOTRUN | Compute 30-day settlement from last document receipt
- TC_EC_023 | NOTRUN | 90-day investigation closure for early policy-year claim
- TC_EC_024 | NOTRUN | Flag overdue investigation beyond 90 days
- TC_EC_025 | NOTRUN | Acknowledge claim within 3 working days from Friday intimation
- TC_EC_026 | NOTRUN | Exclude public holiday while computing acknowledgement due date
- TC_EC_027 | NOTRUN | Apply 80 percent premium refund for suicide within 12 months from inception
- TC_EC_028 | NOTRUN | Apply 80 percent premium refund for suicide within 12 months from revival
- TC_EC_029 | NOTRUN | Accelerate 25 percent Sum Assured for listed critical illness
- TC_EC_030 | NOTRUN | Do not accelerate benefit for non-listed illness
- TC_EC_031 | NOTRUN | AC_019 - Rider amount at exact INR 1 Crore cap
- TC_EC_032 | NOTRUN | AC_019 - Rider amount above INR 1 Crore cap
- TC_EC_033 | NOTRUN | AC_020 - Invalid policy number format
- TC_EC_034 | NOTRUN | AC_020 - Non-existent policy number
- TC_EC_035 | NOTRUN | Female mortality table produces lower premium than male for identical profile
- TC_EC_036 | NOTRUN | Female mortality table remains applicable with smoker loading in Offline channel
- TC_EC_037 | NOTRUN | NRI purchase allowed with mandatory medical examination flag
- TC_EC_038 | NOTRUN | Mandatory medical examination flag for NRI in Offline channel

## Project structure

Typical layout:

- `features/` — Cucumber feature files
- `features/steps/` — step definitions
- `features/support/` — hooks and world setup
- `playwright.config.ts` — Playwright configuration
- `cucumber.js` or `cucumber.cjs` — Cucumber configuration
- `package.json` — npm scripts and dependencies
- `allure-results/` — Allure output
- `.github/workflows/` — GitHub Actions pipeline
- `Jenkinsfile` — Jenkins pipeline

## Requirements

- Node.js 18+ recommended
- npm 9+
- Chromium browser installed via Playwright
- Local app running at `http://localhost:5176`

## Installation

1. Install dependencies:
   - `npm install`

2. Install Playwright browsers:
   - `npx playwright install`

## Running the tests

### Run the full Cucumber suite

- `npm run test`

### Run a specific feature file

- `npm run test -- features/your-feature.feature`

### Run with tags

- `npm run test -- --tags "@smoke"`

### Generate Allure report

- `npm run allure:generate`

### Open Allure report

- `npm run allure:open`

## Login credentials

Use the following credentials in all login scenarios:

- Username: `admin`
- Password: `admin123`

## Important execution rules

- Switch screens only by clicking the provided tab/card locators.
- Do not use URL route navigation for portal screens.
- Assert against the specific observable UI output rendered by the app.
- For NOTRUN scenarios, skip the scenario in code rather than asserting.
- Use the exact selectors provided by the application contract.
- When checking that something is absent or empty, use locator counts rather than text reads from missing elements.
- Keep hooks and step definitions compatible with Cucumber World sharing through `this.page`.

## Locators

Use only the following selectors for the InsureCo Portal:

- `[data-testid="login-username"]`
- `[data-testid="login-password"]`
- `[data-testid="login-btn"]`
- `[data-testid="main-nav"]`
- `[data-testid="nav-tab-0"]`
- `[data-testid="nav-tab-1"]`
- `[data-testid="nav-tab-2"]`
- `[data-testid="nav-tab-3"]`
- `[data-testid="nav-tab-4"]`
- `[data-testid="logout-btn"]`
- `[data-testid="dashboard-page"]`
- `[data-testid="product-card-1"]`
- `[data-testid="product-card-2"]`
- `[data-testid="product-card-3"]`
- `[data-testid="product-card-4"]`

## CI pipelines

### Jenkins

The Jenkins job is expected to run from:

- `http://host.docker.internal:8080/job/GoLiv - Insurance`

A typical Jenkins pipeline should:

- install dependencies
- install browsers
- run the Cucumber regression suite
- publish Allure results if configured
- archive test artifacts and screenshots on failure

### GitHub Actions

A GitHub Actions workflow should typically:

- check out the repository
- set up Node.js
- install dependencies
- install Playwright browsers
- run the Cucumber tests
- upload Allure or test artifacts if needed

## Recommended npm scripts

A typical `package.json` should include scripts such as:

- `test`
- `test:headless`
- `test:headed`
- `allure:generate`
- `allure:open`

## Notes for contributors

- Keep assertions tied to actual app-rendered values.
- Do not hardcode pass/fail logic based on scenario status.
- Preserve selector contracts exactly as provided.
- Ensure every hook cleans up the browser, context, and page.
- Keep step text unique to avoid duplicate step registration conflicts.

## Regression intent

This suite covers:

- term plan eligibility boundaries
- premium calculation behavior
- policy issuance pricing variants
- claim lodgement and claim life-cycle rules
- settlement and investigation timing
- acknowledgement timing and working-day calculations
- suicide benefit handling
- rider acceleration logic
- rejection behavior for invalid policy data
- offline/online and NRI-specific pricing behavior

## Setup checklist

Before running locally:

- Start the portal application on `http://localhost:5176`
- Install dependencies
- Install Playwright browsers
- Confirm the provided selectors are present
- Confirm the login credentials are valid
- Run the suite from the project root

## Expected workflow

1. Open the portal.
2. Log in using `admin / admin123`.
3. Navigate by clicking the appropriate tab/card.
4. Perform the scenario actions.
5. Assert only against the displayed result element for that feature.
6. Skip only the scenarios marked NOTRUN.
7. Capture Allure output and CI artifacts on every run.