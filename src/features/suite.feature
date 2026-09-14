Feature: suite

  @TC_LIF_011
  Scenario: Verify death claim lodgement captures policy number
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_012
  Scenario: Verify claim type selection for natural death
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_013
  Scenario: Verify claim intimation date is recorded
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_014
  Scenario: Verify claim settlement within 30 days for policy over 3 years
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_015
  Scenario: Verify investigation period of 90 days for early claims
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_016
  Scenario: Verify claim acknowledgement within 3 working days of intimation
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_017
  Scenario: Verify suicide within 12 months refunds 80 percent of premiums
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_018
  Scenario: Verify critical illness rider claim acceleration of 25 percent
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_019
  Scenario: Verify accidental death benefit claim processing
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_LIF_020
  Scenario: Verify claim rejection for invalid policy number
    Given I open the InsureCo Portal
    When I log in with username "admin" and password "admin123"
    And I navigate to the dashboard page
    Then I should see the dashboard page
    And I should see the main navigation

  @TC_EC_001
  Scenario: Validate rejection when claim type is omitted
    Given I open the claim intimation screen
    When I leave claim type blank and fill policy number and other mandatory fields
    And I submit the claim
    Then I should see the error message "Claim type is mandatory"
    And the claim should not be accepted

  @TC_EC_002
  Scenario: Validate rejection when policy number is omitted
    Given I access the claim intimation form
    When I enter claim type and leave policy number empty
    And I provide claimant details and submit
    Then I should see the error message "Policy number is required"
    And the claim should not be lodged

  @TC_EC_003
  Scenario: Reject claim with non‑alphanumeric policy number
    Given I open the claim entry screen
    When I enter claim type and policy number "@#%$!123"
    And I submit the claim
    Then I should see the validation error "Invalid policy number format"
    And the claim should not be accepted

  @TC_EC_004
  Scenario: System rejects claim without intimation date
    Given I open the claim lodgement screen
    When I leave intimation date blank and complete other mandatory fields
    And I submit the claim
    Then I should see the error message "Intimation date is required"
    And the claim should not be submitted

  @TC_EC_005
  Scenario: Validate rejection of future-dated intimation
    Given I open the claim entry form
    When I enter intimation date as 2026-10-01 and fill other required fields
    And I submit the claim
    Then I should see the error message "Intimation date cannot be in the future"
    And the submission should be blocked

  @TC_EC_006
  Scenario: Verify no lump‑sum SLA for 3‑year‑old policy
    Given I lodge a death claim
    When the system records the claim
    Then I should see the claim routed to the investigation workflow instead of the 30-day lump-sum payment

  @TC_EC_007
  Scenario: Detect late lump‑sum payment beyond 30‑day SLA
    Given I process claim payment on 2026-09-02
    When I check the SLA monitoring module
    Then I should see the SLA breach alert
    And I should see the violation of AC_003 logged

  @TC_EC_008
  Scenario: Validate on‑time investigation at 90‑day limit
    Given I perform investigation activities
    When I mark the investigation as completed on 2026-08-30
    Then I should see the status "within SLA"
    And I should not see any breach raised

  @TC_EC_009
  Scenario: Detect SLA breach when investigation exceeds 90 days
    Given I complete the investigation on 2026-07-01
    When I review the SLA monitoring report
    Then I should see the SLA breach alert for AC_004

  @TC_EC_010
  Scenario: Validate acknowledgment on third working day
    Given the system sends acknowledgment email on Monday, 2026-09-12
    When I verify the acknowledgment timestamp against the SLA rule
    Then I should see the acknowledgment marked as compliant with AC_005

  @TC_EC_011
  Scenario: Detect late acknowledgment beyond 3 working days
    Given the system dispatches acknowledgment on Friday, 2026-09-09
    When I check the SLA compliance module
    Then I should see the breach alert for AC_005

  @TC_EC_012
  Scenario: Validate 80% refund for suicide claim at 11 months
    Given I submit a suicide death claim
    When the system identifies suicide within the 12-month window
    Then I should see the refund amount displayed as INR 120,000
    And the claim should be processed accordingly

  @TC_EC_013
  Scenario: Validate full refund for suicide at 12‑month threshold
    Given I lodge a suicide claim
    When the system calculates policy age as 12 months
    Then I should see the refund of 100% of premiums
    And I should see INR 200,000 as the refund amount

  @TC_EC_014
  Scenario: Confirm full refund for suicide claim beyond 12 months
    Given I submit a claim with suicide cause
    When the system checks policy age greater than 12 months
    Then I should see the refund amount calculated as INR 180,000
    And I should see 100% of premiums applied

  @TC_EC_015
  Scenario: Accelerate 25% SA on diagnosis at policy inception
    Given I submit a claim with diagnosis date equal to policy issuance date
    When the system calculates the accelerated amount
    Then I should see the claim approved
    And I should see the payout include INR 125,000 accelerated benefit

  @TC_EC_016
  Scenario: Accelerate 25% SA on maximum SA policy
    Given I lodge a claim indicating diagnosis date
    When the system computes 25% of INR 2,500,000
    Then I should see the accelerated benefit of INR 625,000 added to the payout
    And I should see the claim approved

  @TC_EC_017
  Scenario: Cap accidental death payout at INR 1 Crore
    Given I submit an accidental death claim
    When the system aggregates base SA and rider SA and applies the INR 1 Crore ceiling
    Then I should see the payout limited to INR 1,00,00,000
    And I should see the total calculated amount of INR 10,50,00,000

  @TC_EC_018
  Scenario: Full accidental death payout under cap
    Given I lodge an accidental death claim
    When the system adds base SA and rider SA
    Then I should see the claim approved
    And I should see the total payout equals INR 5,50,00,000

  @TC_EC_019
  Scenario: Invalid policy number format rejection
    Given I attempt to lodge a claim with the malformed policy number
    When the system validates the policy number format
    Then I should see the error message "Invalid policy number"
    And the claim should be rejected

  @TC_EC_020
  Scenario: Non‑existent policy number rejection
    Given I submit a claim with the non-existent policy number
    When the system performs lookup against the policy repository
    Then I should see the error message "Policy number not found"
    And the claim should be rejected