Feature: InsureCo Portal Claim Processing and SLA Validation

  Background:
    Given the user is logged into the InsureCo Portal with username "admin" and password "admin123"

  @TC_LIF_011
  Scenario: Verify death claim lodgement captures policy number
    When the user navigates to the claim intimation tab
    And the user enters policy number "POL-12345"
    And the user submits the claim
    Then the claim lodgement should capture the policy number "POL-12345"

  @TC_LIF_012
  Scenario: Verify claim type selection for natural death
    When the user navigates to the claim intimation tab
    And the user selects "Natural Death" as the claim type
    And the user submits the claim
    Then the claim should be processed as "Natural Death"

  @TC_LIF_013
  Scenario: Verify claim intimation date is recorded
    When the user navigates to the claim intimation tab
    And the user enters the current date as the intimation date
    And the user submits the claim
    Then the claim intimation date should be recorded successfully

  @TC_LIF_014
  Scenario: Verify claim settlement within 30 days for policy over 3 years
    When the user navigates to the claims status tab
    And the user views a policy active for more than 3 years with ID "POL-3Y-01"
    Then the system should show a settlement SLA of "30 days" for "POL-3Y-01"

  @TC_LIF_015
  Scenario: Verify investigation period of 90 days for early claims
    When the user navigates to the claims status tab
    And the user views an early claim policy with ID "POL-EARLY-01"
    Then the system should show an investigation SLA of "90 days" for "POL-EARLY-01"

  @TC_LIF_016
  Scenario: Verify claim acknowledgement within 3 working days of intimation
    When the user navigates to the claims status tab
    And the user checks the acknowledgement status for "POL-ACK-01"
    Then the system should confirm acknowledgement within "3 working days" for "POL-ACK-01"

  @TC_LIF_017
  Scenario: Verify suicide within 12 months refunds 80 percent of premiums
    When the user navigates to the claim calculation tab
    And the user inputs suicide claim details for policy "POL-SUICIDE-11M" with premium "150000" and duration "11 months"
    Then the computed refund amount should be "120000" representing "80" percent of premiums

  @TC_LIF_018
  Scenario: Verify critical illness rider claim acceleration of 25 percent
    When the user navigates to the claim calculation tab
    And the user inputs critical illness details for policy "POL-CI-01" with SA "500000"
    Then the accelerated payout should be "125000" representing "25" percent of sum assured

  @TC_LIF_019
  Scenario: Verify accidental death benefit claim processing
    When the user navigates to the claim calculation tab
    And the user inputs accidental death details for policy "POL-ACC-01" with base SA "5000000" and rider SA "5000000"
    Then the total accidental payout should be processed as "10000000"

  @TC_LIF_020
  Scenario: Verify claim rejection for invalid policy number
    When the user navigates to the claim intimation tab
    And the user enters policy number "INVALID-POL-###"
    And the user submits the claim
    Then the system should reject the claim with an invalid policy number error

  @TC_EC_001
  Scenario: Validate rejection when claim type is omitted
    When the user navigates to the claim intimation tab
    And the user leaves the claim type field blank
    And the user enters policy number "POL-12345"
    And the user submits the claim
    Then the system should display error "Claim type is mandatory"

  @TC_EC_002
  Scenario: Validate rejection when policy number is omitted
    When the user navigates to the claim intimation tab
    And the user selects "Natural Death" as the claim type
    And the user leaves the policy number blank
    And the user submits the claim
    Then the system should display error "Policy number is required"

  @TC_EC_003
  Scenario: Reject claim with non-alphanumeric policy number
    When the user navigates to the claim intimation tab
    And the user selects "Natural Death" as the claim type
    And the user enters policy number "@#%$!123"
    And the user submits the claim
    Then the system should display error "Invalid policy number format"

  @TC_EC_004
  Scenario: System rejects claim without intimation date
    When the user navigates to the claim intimation tab
    And the user selects "Natural Death" as the claim type
    And the user enters policy number "POL-12345"
    And the user leaves the intimation date blank
    And the user submits the claim
    Then the system should display error "Intimation date is required"

  @TC_EC_005
  Scenario: Validate rejection of future-dated intimation
    When the user navigates to the claim intimation tab
    And the user selects "Natural Death" as the claim type
    And the user enters policy number "POL-12345"
    And the user enters intimation date as "2026-10-01"
    And the user submits the claim
    Then the system should display error "Intimation date cannot be in the future"

  @TC_EC_006
  Scenario: Verify no lump-sum SLA for 3-year-old policy
    When the user navigates to the claims status tab
    And the user views a claim with policy duration less than 3 years with ID "POL-UNDER-3Y"
    Then the system should route the claim to investigation workflow instead of 30-day lump-sum payment

  @TC_EC_007
  Scenario: Detect late lump-sum payment beyond 30-day SLA
    When the user navigates to the SLA monitoring tab
    And the user reviews a claim processed on "2026-09-02" which is "31" days after document receipt
    Then the system should raise an SLA breach alert for AC_003

  @TC_EC_008
  Scenario: Validate on-time investigation at 90-day limit
    When the user navigates to the SLA monitoring tab
    And the user reviews an investigation completed on "2026-08-30" which is the "90th" day
    Then the system should record the investigation status as "within SLA" and raise no breach

  @TC_EC_009
  Scenario: Detect SLA breach when investigation exceeds 90 days
    When the user navigates to the SLA monitoring tab
    And the user reviews an investigation completed on "2026-07-01" which is the "91st" day
    Then the system should generate an SLA breach alert for AC_004

  @TC_EC_010
  Scenario: Validate acknowledgment on third working day
    When the user navigates to the SLA monitoring tab
    And the user checks an acknowledgment sent on "2026-09-12" which is the third working day
    Then the system should mark the acknowledgment status as "compliant" with AC_005

  @TC_EC_011
  Scenario: Detect late acknowledgment beyond 3 working days
    When the user navigates to the SLA monitoring tab
    And the user checks an acknowledgment sent on "2026-09-09" which is the fourth working day
    Then the system should generate a breach alert for AC_005

  @TC_EC_012
  Scenario: Validate 80% refund for suicide claim at 11 months
    When the user navigates to the claim calculation tab
    And the user calculates a suicide claim for policy "POL-SUICIDE-11M" with 11 months duration and premium "150000"
    Then the system should display the refund amount as "INR 120,000" representing 80 percent of premiums

  @TC_EC_013
  Scenario: Validate full refund for suicide at 12-month threshold
    When the user navigates to the claim calculation tab
    And the user calculates a suicide claim for policy "POL-SUICIDE-12M" with 12 months duration and premium "200000"
    Then the system should display the refund amount as "INR 200,000" representing 100 percent of premiums

  @TC_EC_014
  Scenario: Confirm full refund for suicide claim beyond 12 months
    When the user navigates to the claim calculation tab
    And the user calculates a suicide claim for policy "POL-SUICIDE-13M" with 13 months duration and premium "180000"
    Then the system should display the refund amount as "INR 180,000" representing 100 percent of premiums

  @TC_EC_015
  Scenario: Accelerate 25% SA on diagnosis at policy inception
    When the user navigates to the claim calculation tab
    And the user calculates an accelerated critical illness claim with SA "500000" at inception
    Then the payout amount should include "INR 125,000" representing the 25 percent accelerated benefit

  @TC_EC_016
  Scenario: Accelerate 25% SA on maximum SA policy
    When the user navigates to the claim calculation tab
    And the user calculates an accelerated critical illness claim with maximum SA "2500000"
    Then the payout amount should include "INR 625,000" representing the 25 percent accelerated benefit

  @TC_EC_017
  Scenario: Cap accidental death payout at INR 1 Crore
    When the user navigates to the claim calculation tab
    And the user calculates an accidental death claim with base SA "5500000" and rider SA "5000000" which totals "10500000"
    Then the payout should be limited to "INR 1,00,00,000" due to the 1 Crore ceiling

  @TC_EC_018
  Scenario: Full accidental death payout under cap
    When the user navigates to the claim calculation tab
    And the user calculates an accidental death claim with base SA "3000000" and rider SA "2500000" which totals "5500000"
    Then the payout should equal "INR 5,50,00,000" without being capped

  @TC_EC_019
  Scenario: Invalid policy number format rejection
    When the user navigates to the claim intimation tab
    And the user attempts to lodge a claim with a malformed policy number "POL-!!!-???"
    Then the system should reject the claim with error "Invalid policy number"

  @TC_EC_020
  Scenario: Non-existent policy number rejection
    When the user navigates to the claim intimation tab
    And the user attempts to lodge a claim with a non-existent policy number "POL-99999"
    Then the system should reject the claim with error "Policy number not found"