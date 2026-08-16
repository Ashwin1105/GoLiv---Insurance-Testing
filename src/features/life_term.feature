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
  Scenario: TC_EC_008 - Validating Smoker Status Declaration at Proposal
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Validating Female Mortality Table Application
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Validating NRI Applicant Mandatory Medical Examination
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Validating Online Purchase Channel Premium Calculation
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Validating Offline Purchase Channel Premium Calculation
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Validating Minimum Entry Age
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Validating Maximum Entry Age
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_014"
    Then a premium result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Validating Minimum Policy Term
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_015"
    Then a premium result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Validating Maximum Policy Term
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_016"
    Then a premium result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Validating Minimum Sum Assured
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_017"
    Then a premium result should be shown for "TC_EC_017"

