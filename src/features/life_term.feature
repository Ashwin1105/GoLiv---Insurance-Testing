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
  Scenario: TC_EC_009 - Life Term Insurance sum assured below INR 25,00,000 is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Life Term Insurance sum assured at INR 25,00,000 is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Life Term Insurance high sum assured is allowed subject to underwriting
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Verify non-smoker discount at minimum eligibility boundary
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Verify no non-smoker discount when smoking status is not declared
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Verify smoker loading is applied at issuance after proposal declaration
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_014"
    Then a premium result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Verify smoker loading is not applied to a non-smoker proposal
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_015"
    Then a premium result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Verify female mortality table produces lower premium than male for same profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_016"
    Then a premium result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Verify female life is not priced using male mortality table
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_017"
    Then a premium result should be shown for "TC_EC_017"

@TC_EC_018
  Scenario: TC_EC_018 - Verify NRI applicant triggers mandatory medical examination flag
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_018"
    Then a premium result should be shown for "TC_EC_018"

@TC_EC_019
  Scenario: TC_EC_019 - Verify medical exam flag is raised for NRI with incomplete passport validation
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_019"
    Then a premium result should be shown for "TC_EC_019"

@TC_EC_020
  Scenario: TC_EC_020 - Verify valid premium calculation for Online channel
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_020"
    Then a premium result should be shown for "TC_EC_020"

@TC_EC_021
  Scenario: TC_EC_021 - Verify valid premium calculation for Offline channel
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_021"
    Then a premium result should be shown for "TC_EC_021"

@TC_EC_022
  Scenario: TC_EC_022 - Verify unsupported purchase channel is rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_022"
    Then a premium result should be shown for "TC_EC_022"

