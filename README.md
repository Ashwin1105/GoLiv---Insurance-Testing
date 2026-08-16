# InsureCo Portal Automation Project
This project aims to automate the testing of the InsureCo Portal using Playwright, TypeScript, Cucumber BDD, Allure, and Jenkinsfile for CI/CD pipeline integration.

## Prerequisites
- Node.js (latest version)
- npm (latest version)
- Playwright (latest version)
- TypeScript (latest version)
- Cucumber (latest version)
- Allure (latest version)
- Jenkinsfile (for CI/CD pipeline integration)
- GitHub Actions (for automated testing and reporting)

## Setup
1. Clone the repository using `git clone`.
2. Install the required dependencies using `npm install`.
3. Configure the Allure report generator.
4. Set up the Jenkinsfile for CI/CD pipeline integration.
5. Configure GitHub Actions for automated testing and reporting.

## Run the Tests
1. Run the tests using `npx cucumber-js`.
2. View the test report using `npx allure serve`.

## Test Cases
The following test cases are included in this project:

### Term Plan Test Cases
1. **TC_LIF_001**: Verify term plan entry age minimum 18 years accepted
2. **TC_LIF_002**: Verify term plan entry age maximum 65 years accepted
3. **TC_LIF_003**: Verify policy term minimum 5 years is accepted
4. **TC_LIF_004**: Verify policy term maximum 40 years is accepted
5. **TC_LIF_005**: Verify minimum sum assured of 25 lakhs is enforced
6. **TC_LIF_006**: Verify premium calculation for non-smoker male profile
7. **TC_LIF_007**: Verify smoker premium loading is applied at issuance
8. **TC_LIF_008**: Verify premium calculation for female lives is lower
9. **TC_LIF_009**: Verify NRI applicant premium calculation with medical flag
10. **TC_LIF_010**: Verify online channel premium calculation succeeds

### Edge Cases Test Cases
1. **TC_EC_001**: Minimum Entry Age Validation for Term Plan (NOTRUN)
2. **TC_EC_002**: Maximum Entry Age Validation for Term Plan (NOTRUN)
3. **TC_EC_003**: Minimum Policy Term Validation for Term Plan (NOTRUN)
4. **TC_EC_004**: Maximum Policy Term Validation for Term Plan (NOTRUN)
5. **TC_EC_005**: Minimum Sum Assured Validation for Term Plan (NOTRUN)
6. **TC_EC_006**: Non-Smoker Premium Discount Validation for Term Plan (NOTRUN)
7. **TC_EC_007**: Smoker Loading Validation for Term Plan (NOTRUN)
8. **TC_EC_008**: Validating Smoker Status Declaration at Proposal (NOTRUN)
9. **TC_EC_009**: Validating Female Mortality Table Application (NOTRUN)
10. **TC_EC_010**: Validating NRI Applicant Mandatory Medical Examination (NOTRUN)
11. **TC_EC_011**: Validating Online Purchase Channel Premium Calculation (NOTRUN)
12. **TC_EC_012**: Validating Offline Purchase Channel Premium Calculation (NOTRUN)
13. **TC_EC_013**: Validating Minimum Entry Age (NOTRUN)
14. **TC_EC_014**: Validating Maximum Entry Age (NOTRUN)
15. **TC_EC_015**: Validating Minimum Policy Term (NOTRUN)
16. **TC_EC_016**: Validating Maximum Policy Term (NOTRUN)
17. **TC_EC_017**: Validating Minimum Sum Assured (NOTRUN)

## Allure Report
The Allure report can be viewed using `npx allure serve`. The report will display the test results, including pass and fail rates, and detailed information about each test case.

## Jenkinsfile
The Jenkinsfile is used to integrate the project with the CI/CD pipeline. It will run the tests and generate the Allure report.

## GitHub Actions
The GitHub Actions workflow will run the tests and generate the Allure report on each push to the repository.

## Test Data
The test data is included in the test cases. The test data includes login credentials, policy details, and premium details.

## Locators
The locators used in the project are:
- `data-testid="login-username"`
- `data-testid="login-password"`
- `data-testid="login-btn"`
- `data-testid="main-nav"`
- `data-testid="nav-tab-0"`
- `data-testid="nav-tab-1"`
- `data-testid="nav-tab-2"`
- `data-testid="nav-tab-3"`
- `data-testid="nav-tab-4"`
- `data-testid="logout-btn"`
- `data-testid="dashboard-page"`
- `data-testid="product-card-1"`
- `data-testid="product-card-2"`
- `data-testid="product-card-3"`
- `data-testid="product-card-4"`

## App URL
The app URL is `http://localhost:5176`.

## Login Credentials
The login credentials are:
- Username: `admin`
- Password: `admin123`