Feature: Life Term Insurance - automated regression

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
  Scenario: TC_EC_001 - Verify rejection when claim type is not provided at claim lodgement
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_001"
    Then a claim result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Reject claim when policy number does not meet format criteria
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_002"
    Then a claim result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Ensure system rejects claim when intimation date is not provided
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_003"
    Then a claim result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Reject claim when intimation date is later than current system date
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_004"
    Then a claim result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Verify payment is flagged when settlement occurs on 31st day after full documentation
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_005"
    Then a claim result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Confirm that a 3‑year‑old policy does not trigger 30‑day lump‑sum payment rule
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Detect violation when investigation finishes on 91st day
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_007"
    Then a claim result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Validate that acknowledgement after 4 working days triggers compliance alert
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_008"
    Then a claim result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Determine refund percentage when suicide occurs on the 12th month anniversary
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_009"
    Then a claim result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Confirm full benefit payout for suicide occurring 13 months after policy start
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_010"
    Then a claim result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Validate 80% premium refund when suicide occurs 11 months after policy revival
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_011"
    Then a revival result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Accelerate 25% of minimum Sum Assured on diagnosis
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Accelerate 25% of maximum Sum Assured on diagnosis
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Process accidental death benefit rider at INR 1 Crore limit
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_014"
    Then a claim result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Handle accidental death rider amount above INR 1 Crore
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_015"
    Then a premium result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Reject claim with non‑numeric policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_016"
    Then a claim result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Reject claim with blank policy number field
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_017"
    Then a claim result should be shown for "TC_EC_017"

