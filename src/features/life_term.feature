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
  Scenario: TC_EC_001 - Reject term plan when applicant is 17 years old
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Allow term plan when applicant is 18 years old
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Reject term plan when applicant is 66 years old
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Allow term plan when applicant is 65 years old
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Reject term plan when policy term is 4 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Allow term plan when policy term is 5 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Reject term plan when policy term is 41 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Allow term plan when policy term is 40 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Reject term plan when sum assured is INR 24,99,999
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Allow term plan when sum assured is INR 25,00,000
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Process term plan with high sum assured subject to underwriting
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Capture death claim type and policy number at lodgement
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_012"
    Then a claim result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Persist claim intimation date at death claim lodgement
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_013"
    Then a claim result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Acknowledge death claim within 3 working days
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_014"
    Then a claim result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Reject death claim with invalid policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_015"
    Then a claim result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Settle death benefit within 30 days for policy older than 3 years
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_016"
    Then a claim result should be shown for "TC_EC_016"

@TC_EC_001
  Scenario: TC_EC_001 - Non-smoker discount at boundary entry profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Missing smoker declaration at proposal
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Smoker loading applied at issuance
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Female mortality table premium comparison
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - NRI applicant with mandatory medical flag
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Online purchase channel premium calculation
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Offline purchase channel premium calculation
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Death claim lodgement mandatory fields
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_008"
    Then a claim result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Invalid policy number at death claim lodgement
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_009"
    Then a claim result should be shown for "TC_EC_009"

@TC_EC_001
  Scenario: TC_EC_001 - Reject death claim when claim intimation date is missing
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_001"
    Then a claim result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Record claim intimation date for backdated or future-dated intimation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_002"
    Then a claim result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Verify lump-sum payout timeline after receipt of all documents
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Settlement due date based on last pending document receipt
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_004"
    Then a claim result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Track investigation completion within 90 days for early-policy claim
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_005"
    Then a claim result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Flag overdue investigation beyond 90 days
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_006"
    Then a claim result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Acknowledge claim by third working day
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_007"
    Then a claim result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Acknowledge claim across non-working days
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_008"
    Then a claim result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Apply 80 percent premium refund for suicide within 12 months of inception
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_009"
    Then a claim result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Apply 80 percent premium refund for suicide within 12 months of revival
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_010"
    Then a revival result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Accelerate 25 percent of Sum Assured for listed critical illness
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Reject acceleration for non-listed or unsupported diagnosis
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_001
  Scenario: TC_EC_001 - ADB rider claim at INR 1 Crore cap
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_001"
    Then a claim result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - ADB rider claim above INR 1 Crore cap
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_002"
    Then a claim result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - ADB rider claim with invalid rider amount
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_003"
    Then a claim result should be shown for "TC_EC_003"

@TC_EC_001
  Scenario: TC_EC_001 - Reject death claim with malformed policy number format
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_001"
    Then a claim result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Reject death claim with non-existent policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_002"
    Then a claim result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Reject death claim with policy number containing spaces or hidden characters
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_003"
    Then a claim result should be shown for "TC_EC_003"

