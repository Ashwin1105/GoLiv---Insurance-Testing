Feature: Life Term Insurance - automated regression

@TC_LIF_001
  Scenario: TC_LIF_001 - Verify term plan entry age minimum 18 years accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_001"
    Then a premium result should be shown for "TC_LIF_001"

@TC_LIF_002
  Scenario: TC_LIF_002 - Verify term plan entry age maximum 65 years accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_002"
    Then a premium result should be shown for "TC_LIF_002"

@TC_LIF_003
  Scenario: TC_LIF_003 - Verify policy term minimum 5 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_003"
    Then a premium result should be shown for "TC_LIF_003"

@TC_LIF_004
  Scenario: TC_LIF_004 - Verify policy term maximum 40 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_004"
    Then a premium result should be shown for "TC_LIF_004"

@TC_LIF_005
  Scenario: TC_LIF_005 - Verify minimum sum assured of 25 lakhs is enforced
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_005"
    Then a premium result should be shown for "TC_LIF_005"

@TC_LIF_006
  Scenario: TC_LIF_006 - Verify premium calculation for non-smoker male profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_006"
    Then a premium result should be shown for "TC_LIF_006"

@TC_LIF_007
  Scenario: TC_LIF_007 - Verify smoker premium loading is applied at issuance
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_007"
    Then a premium result should be shown for "TC_LIF_007"

@TC_LIF_008
  Scenario: TC_LIF_008 - Verify premium calculation for female lives is lower
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_008"
    Then a premium result should be shown for "TC_LIF_008"

@TC_LIF_009
  Scenario: TC_LIF_009 - Verify NRI applicant premium calculation with medical flag
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_009"
    Then a premium result should be shown for "TC_LIF_009"

@TC_LIF_010
  Scenario: TC_LIF_010 - Verify online channel premium calculation succeeds
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_010"
    Then a premium result should be shown for "TC_LIF_010"

@TC_LIF_011
  Scenario: TC_LIF_011 - Verify death claim lodgement captures policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_011"
    Then a claim result should be shown for "TC_LIF_011"

@TC_LIF_012
  Scenario: TC_LIF_012 - Verify claim type selection for natural death
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_012"
    Then a claim result should be shown for "TC_LIF_012"

@TC_LIF_013
  Scenario: TC_LIF_013 - Verify claim intimation date is recorded
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_013"
    Then a claim result should be shown for "TC_LIF_013"

@TC_LIF_014
  Scenario: TC_LIF_014 - Verify claim settlement within 30 days for policy over 3 years
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_014"
    Then a claim result should be shown for "TC_LIF_014"

@TC_LIF_015
  Scenario: TC_LIF_015 - Verify investigation period of 90 days for early claims
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_015"
    Then a claim result should be shown for "TC_LIF_015"

@TC_LIF_016
  Scenario: TC_LIF_016 - Verify claim acknowledgement within 3 working days of intimation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_016"
    Then a claim result should be shown for "TC_LIF_016"

@TC_LIF_017
  Scenario: TC_LIF_017 - Verify suicide within 12 months refunds 80 percent of premiums
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_017"
    Then a claim result should be shown for "TC_LIF_017"

@TC_LIF_018
  Scenario: TC_LIF_018 - Verify critical illness rider claim acceleration of 25 percent
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_018"
    Then a claim result should be shown for "TC_LIF_018"

@TC_LIF_019
  Scenario: TC_LIF_019 - Verify accidental death benefit claim processing
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_019"
    Then a claim result should be shown for "TC_LIF_019"

@TC_LIF_020
  Scenario: TC_LIF_020 - Verify claim rejection for invalid policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_LIF_020"
    Then a claim result should be shown for "TC_LIF_020"

@TC_LIF_021
  Scenario: TC_LIF_021 - Verify grace period of 30 days for annual premium mode
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_LIF_021"
    Then a revival result should be shown for "TC_LIF_021"

@TC_LIF_022
  Scenario: TC_LIF_022 - Verify grace period of 15 days for monthly premium mode
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_LIF_022"
    Then a revival result should be shown for "TC_LIF_022"

@TC_LIF_023
  Scenario: TC_LIF_023 - Verify lapsed policy revival allowed within 5 years
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_LIF_023"
    Then a revival result should be shown for "TC_LIF_023"

@TC_LIF_024
  Scenario: TC_LIF_024 - Verify revival within 6 months without fresh medical underwriting
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_LIF_024"
    Then a revival result should be shown for "TC_LIF_024"

@TC_LIF_025
  Scenario: TC_LIF_025 - Verify paid-up value calculated correctly after 2 years premiums paid
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks paid-up value for "TC_LIF_025"
    Then a paid-up result should be shown for "TC_LIF_025"

@TC_LIF_026
  Scenario: TC_LIF_026 - Verify paid-up eligibility requires 3 consecutive premium years
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks paid-up value for "TC_LIF_026"
    Then a paid-up result should be shown for "TC_LIF_026"

@TC_LIF_027
  Scenario: TC_LIF_027 - Verify policy lapse after grace period expiry
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_LIF_027"
    Then a revival result should be shown for "TC_LIF_027"

@TC_LIF_028
  Scenario: TC_LIF_028 - Verify revival premium interest at 8 percent per annum
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_LIF_028"
    Then a revival result should be shown for "TC_LIF_028"

@TC_LIF_029
  Scenario: TC_LIF_029 - Verify free look period of 15 days for offline policy
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_029"
    Then a premium result should be shown for "TC_LIF_029"

@TC_LIF_030
  Scenario: TC_LIF_030 - Verify free look period of 30 days for online policy
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_LIF_030"
    Then a premium result should be shown for "TC_LIF_030"

@TC_EC_001
  Scenario: TC_EC_001 - Minimum Entry Age Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Maximum Entry Age Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Minimum Policy Term Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Maximum Policy Term Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Minimum Sum Assured Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Non-Smoker Premium Discount Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Smoker Loading Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Female Mortality Table Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - NRI Applicant Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Mandatory Medical Examination Flag Validation for NRI Applicants
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Online Purchase Channel Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Offline Purchase Channel Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Claim Type and Policy Number Validation for Death Claim
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_013"
    Then a claim result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Claim Intimation Date Validation for Death Claim
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_014"
    Then a claim result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Death Benefit Payment Validation for Policies More Than 3 Years Old
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_015"
    Then a claim result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Investigation Completion Validation for Claims Within the First 3 Policy Years
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_016"
    Then a claim result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Claim Acknowledgement Validation Within 3 Working Days of Intimation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_017"
    Then a claim result should be shown for "TC_EC_017"

@TC_EC_018
  Scenario: TC_EC_018 - Suicide Exclusion Validation Within 12 Months From Inception or Revival
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_018"
    Then a revival result should be shown for "TC_EC_018"

@TC_EC_019
  Scenario: TC_EC_019 - Critical Illness Rider Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_019"
    Then a premium result should be shown for "TC_EC_019"

@TC_EC_020
  Scenario: TC_EC_020 - Accidental Death Benefit Rider Validation for Term Plan
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_020"
    Then a claim result should be shown for "TC_EC_020"

@TC_EC_021
  Scenario: TC_EC_021 - Invalid Policy Number Validation for Claim Submission
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_021"
    Then a claim result should be shown for "TC_EC_021"

@TC_EC_022
  Scenario: TC_EC_022 - Grace Period Validation for Annual Mode
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_022"
    Then a revival result should be shown for "TC_EC_022"

@TC_EC_023
  Scenario: TC_EC_023 - Grace Period Validation for Semi-Annual Mode
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_023"
    Then a revival result should be shown for "TC_EC_023"

@TC_EC_024
  Scenario: TC_EC_024 - Grace Period Validation for Quarterly Mode
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_024"
    Then a revival result should be shown for "TC_EC_024"

@TC_EC_025
  Scenario: TC_EC_025 - Grace Period Validation for Monthly Mode
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_025"
    Then a revival result should be shown for "TC_EC_025"

@TC_EC_026
  Scenario: TC_EC_026 - Revival of Lapsed Policy Validation Within 5 Years From the Date of First Unpaid Premium
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_026"
    Then a revival result should be shown for "TC_EC_026"

@TC_EC_027
  Scenario: TC_EC_027 - Revival Within 6 Months of Lapse Validation Without Requiring Fresh Medical Underwriting for Sum Assured Up to INR 50 Lakhs
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_027"
    Then a revival result should be shown for "TC_EC_027"

@TC_EC_028
  Scenario: TC_EC_028 - Payment of All Due Premiums with Interest Validation for Revival of Lapsed Policy
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_028"
    Then a revival result should be shown for "TC_EC_028"

@TC_EC_029
  Scenario: TC_EC_029 - Paid-Up Value Validation for Lapsed Policy With Premiums Paid for At Least 3 Consecutive Years for Regular Pay
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks paid-up value for "TC_EC_029"
    Then a paid-up result should be shown for "TC_EC_029"

@TC_EC_030
  Scenario: TC_EC_030 - Paid-Up Sum Assured Validation for Lapsed Policy With Premiums Paid for At Least 3 Consecutive Years for Regular Pay
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks paid-up value for "TC_EC_030"
    Then a paid-up result should be shown for "TC_EC_030"

@TC_EC_031
  Scenario: TC_EC_031 - Free Look Period Validation for 15 Days From Receipt of the Policy Document
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_031"
    Then a premium result should be shown for "TC_EC_031"

@TC_EC_032
  Scenario: TC_EC_032 - Free Look Period Validation for 30 Days for Distance-Marketing (Online) Channels
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_032"
    Then a premium result should be shown for "TC_EC_032"

@TC_EC_001
  Scenario: TC_EC_001 - Policy Lapse Due to Non-Payment Within Grace Period
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_001"
    Then a revival result should be shown for "TC_EC_001"

