Feature: InsureCo Portal regression suite

  @TC_LIF_011
  Scenario: Verify death claim lodgement captures policy number
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_012
  Scenario: Verify claim type selection for natural death
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_013
  Scenario: Verify claim intimation date is recorded
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_014
  Scenario: Verify claim settlement within 30 days for policy over 3 years
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_015
  Scenario: Verify investigation period of 90 days for early claims
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_016
  Scenario: Verify claim acknowledgement within 3 working days of intimation
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_017
  Scenario: Verify suicide within 12 months refunds 80 percent of premiums
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_018
  Scenario: Verify critical illness rider claim acceleration of 25 percent
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_019
  Scenario: Verify accidental death benefit claim processing
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_LIF_020
  Scenario: Verify claim rejection for invalid policy number
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_001
  Scenario: Validate rejection when claim type is omitted
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_002
  Scenario: Validate rejection when policy number is omitted
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_003
  Scenario: Reject claim with non‑alphanumeric policy number
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_004
  Scenario: System rejects claim without intimation date
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_005
  Scenario: Validate rejection of future-dated intimation
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_006
  Scenario: Verify no lump‑sum SLA for 3‑year‑old policy
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_007
  Scenario: Detect late lump‑sum payment beyond 30‑day SLA
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_008
  Scenario: Validate on‑time investigation at 90‑day limit
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_009
  Scenario: Detect SLA breach when investigation exceeds 90 days
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_010
  Scenario: Validate acknowledgment on third working day
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_011
  Scenario: Detect late acknowledgment beyond 3 working days
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_012
  Scenario: Validate 80% refund for suicide claim at 11 months
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_013
  Scenario: Validate full refund for suicide at 12‑month threshold
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_014
  Scenario: Confirm full refund for suicide claim beyond 12 months
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_015
  Scenario: Accelerate 25% SA on diagnosis at policy inception
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_016
  Scenario: Accelerate 25% SA on maximum SA policy
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_017
  Scenario: Cap accidental death payout at INR 1 Crore
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_018
  Scenario: Full accidental death payout under cap
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_019
  Scenario: Invalid policy number format rejection
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed

  @TC_EC_020
  Scenario: Non‑existent policy number rejection
    Given I open the InsureCo Portal
    When I log in with valid credentials
    Then the dashboard page is displayed