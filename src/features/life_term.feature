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
  Scenario: TC_EC_001 - Validate rejection when claim type is omitted
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_001"
    Then a claim result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Reject claim with malformed policy number
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_002"
    Then a claim result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Ensure claim is rejected when intimation date is not provided
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_003"
    Then a claim result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Reject claim with future intimation date
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_004"
    Then a claim result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Validate payment rule does not trigger for 3‑year‑old policy
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Detect violation when payment exceeds 30‑day limit
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Verify investigation rule applicability at 3‑year boundary
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_007"
    Then a claim result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Detect overdue investigation beyond 90 days
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_008"
    Then a claim result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Check for breach when acknowledgement exceeds 3 working days
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_009"
    Then a claim result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Validate acknowledgement timeline when intimation occurs on a holiday
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_010"
    Then a claim result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Determine refund calculation when suicide occurs at 12 months
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_011"
    Then a claim result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Validate full premium refund when suicide occurs after 12 months of revival
Given the user is logged in to the insurance portal
When the user opens lapse and revival
    And the user checks revival for "TC_EC_012"
    Then a revival result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Critical Illness Rider acceleration at minimum Sum Assured
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Process Accidental Death Benefit Rider with Sum Assured = INR 1 Crore
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_014"
    Then a claim result should be shown for "TC_EC_014"

@TC_EC_015
  Scenario: TC_EC_015 - Reject Accidental Death Benefit Rider when Sum Assured > INR 1 Crore
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_015"
    Then a claim result should be shown for "TC_EC_015"

@TC_EC_016
  Scenario: TC_EC_016 - Reject Claim with Insufficient Policy Number Length
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_016"
    Then a claim result should be shown for "TC_EC_016"

@TC_EC_017
  Scenario: TC_EC_017 - Reject Claim When Policy Number Is Null
Given the user is logged in to the insurance portal
When the user opens claim management
    And the user lodges a claim for "TC_EC_017"
    Then a claim result should be shown for "TC_EC_017"

