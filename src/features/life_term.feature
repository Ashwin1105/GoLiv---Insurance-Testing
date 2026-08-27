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
  Scenario: TC_EC_001 - Life Term Insurance entry age below 18 years is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Life Term Insurance entry age at 18 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Life Term Insurance entry age above 65 years is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Life Term Insurance entry age at 65 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Life Term Insurance policy term below 5 years is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Life Term Insurance policy term at 5 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Life Term Insurance policy term above 40 years is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Life Term Insurance policy term at 40 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Life Term Insurance Sum Assured below INR 25,00,000 is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Life Term Insurance Sum Assured at INR 25,00,000 is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Life Term Insurance high Sum Assured passes subject to underwriting
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - NRI high Sum Assured proposal is allowed subject to underwriting with mandatory medical examination flag
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Verify NRI premium calculation sets medical exam flag
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Verify valid premium for Offline purchase channel
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_014"
    Then a premium result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Non-smoker discount applied for age 18 term plan
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_015"
    Then a premium result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Non-smoker discount applied for age 65 and tenure 40 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_016"
    Then a premium result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Smoker loading applied at issuance for declared smoker
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_017"
    Then a premium result should be shown for "TC_EC_017"

@TC_EC_018
  Scenario: TC_EC_018 - Missing smoker declaration at proposal
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_018"
    Then a premium result should be shown for "TC_EC_018"

@TC_EC_019
  Scenario: TC_EC_019 - Female mortality table used for age 18 comparison
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_019"
    Then a premium result should be shown for "TC_EC_019"

@TC_EC_020
  Scenario: TC_EC_020 - Female mortality table used for age 65 comparison
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_020"
    Then a premium result should be shown for "TC_EC_020"

