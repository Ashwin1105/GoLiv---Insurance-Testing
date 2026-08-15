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

@TC_EC_001
  Scenario: TC_EC_001 - Life Term Insurance entry age 17 years should be rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Life Term Insurance entry age 18 years should be accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Life Term Insurance entry age 66 years should be rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Life Term Insurance entry age 65 years should be accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Life Term Insurance policy term 4 years should be rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Life Term Insurance policy term 5 years should be accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Life Term Insurance policy term 41 years should be rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Life Term Insurance policy term 40 years should be accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Life Term Insurance sum assured INR 24,99,999 should be rejected
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Life Term Insurance sum assured INR 25,00,000 should be accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Life Term Insurance high sum assured should be permitted subject to underwriting
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Life Term Insurance extreme sum assured should not be blocked by a maximum cap
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Non-smoker discount retained in Offline channel pricing
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Smoker status amendment before issuance triggers loading
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_014"
    Then a premium result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Online channel premium calculation works for eligible profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_015"
    Then a premium result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Offline channel premium calculation works for eligible profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_016"
    Then a premium result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Death claim lodgement captures mandatory claim type and policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_017"
    Then a claim result should be shown for "TC_EC_017"

@TC_EC_018
  Scenario: TC_EC_018 - Death claim with missing policy number is rejected at lodgement
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_018"
    Then a claim result should be shown for "TC_EC_018"

@TC_EC_019
  Scenario: TC_EC_019 - Record claim intimation date for same-day intimation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_019"
    Then a claim result should be shown for "TC_EC_019"

@TC_EC_020
  Scenario: TC_EC_020 - Record claim intimation date for delayed intimation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_020"
    Then a claim result should be shown for "TC_EC_020"

@TC_EC_021
  Scenario: TC_EC_021 - Lump sum settlement within 30 days for policy older than 3 years
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_021"
    Then a claim result should be shown for "TC_EC_021"

@TC_EC_022
  Scenario: TC_EC_022 - Compute 30-day settlement from last document receipt
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_022"
    Then a claim result should be shown for "TC_EC_022"

@TC_EC_023
  Scenario: TC_EC_023 - 90-day investigation closure for early policy-year claim
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_023"
    Then a claim result should be shown for "TC_EC_023"

@TC_EC_024
  Scenario: TC_EC_024 - Flag overdue investigation beyond 90 days
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_024"
    Then a claim result should be shown for "TC_EC_024"

@TC_EC_025
  Scenario: TC_EC_025 - Acknowledge claim within 3 working days from Friday intimation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_025"
    Then a claim result should be shown for "TC_EC_025"

@TC_EC_026
  Scenario: TC_EC_026 - Exclude public holiday while computing acknowledgement due date
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_026"
    Then a claim result should be shown for "TC_EC_026"

@TC_EC_027
  Scenario: TC_EC_027 - Apply 80 percent premium refund for suicide within 12 months from inception
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_027"
    Then a claim result should be shown for "TC_EC_027"

@TC_EC_028
  Scenario: TC_EC_028 - Apply 80 percent premium refund for suicide within 12 months from revival
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_028"
    Then a revival result should be shown for "TC_EC_028"

@TC_EC_029
  Scenario: TC_EC_029 - Accelerate 25 percent Sum Assured for listed critical illness
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_029"
    Then a premium result should be shown for "TC_EC_029"

@TC_EC_030
  Scenario: TC_EC_030 - Do not accelerate benefit for non-listed illness
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_030"
    Then a premium result should be shown for "TC_EC_030"

@TC_EC_031
  Scenario: TC_EC_031 - AC_019 - Rider amount at exact INR 1 Crore cap
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_031"
    Then a premium result should be shown for "TC_EC_031"

@TC_EC_032
  Scenario: TC_EC_032 - AC_019 - Rider amount above INR 1 Crore cap
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_032"
    Then a premium result should be shown for "TC_EC_032"

@TC_EC_033
  Scenario: TC_EC_033 - AC_020 - Invalid policy number format
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_033"
    Then a premium result should be shown for "TC_EC_033"

@TC_EC_034
  Scenario: TC_EC_034 - AC_020 - Non-existent policy number
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_034"
    Then a premium result should be shown for "TC_EC_034"

@TC_EC_035
  Scenario: TC_EC_035 - Female mortality table produces lower premium than male for identical profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_035"
    Then a premium result should be shown for "TC_EC_035"

@TC_EC_036
  Scenario: TC_EC_036 - Female mortality table remains applicable with smoker loading in Offline channel
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_036"
    Then a premium result should be shown for "TC_EC_036"

@TC_EC_037
  Scenario: TC_EC_037 - NRI purchase allowed with mandatory medical examination flag
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_037"
    Then a premium result should be shown for "TC_EC_037"

@TC_EC_038
  Scenario: TC_EC_038 - Mandatory medical examination flag for NRI in Offline channel
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_038"
    Then a premium result should be shown for "TC_EC_038"

