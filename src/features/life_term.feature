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
