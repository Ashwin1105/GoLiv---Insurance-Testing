Feature: InsureCo Portal suite

  @TC_LIF_001
  Scenario: Verify term plan entry age minimum 18 years accepted
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should accept entry age 18 years

  @TC_LIF_002
  Scenario: Verify term plan entry age maximum 65 years accepted
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should accept entry age 65 years

  @TC_LIF_003
  Scenario: Verify policy term minimum 5 years is accepted
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should accept policy term 5 years

  @TC_LIF_004
  Scenario: Verify policy term maximum 40 years is accepted
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should accept policy term 40 years

  @TC_LIF_005
  Scenario: Verify minimum sum assured of 25 lakhs is enforced
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should enforce minimum sum assured 25 lakhs

  @TC_LIF_006
  Scenario: Verify premium calculation for non-smoker male profile
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the premium should be calculated for a non smoker male profile

  @TC_LIF_007
  Scenario: Verify smoker premium loading is applied at issuance
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the premium should include smoker loading at issuance

  @TC_LIF_008
  Scenario: Verify premium calculation for female lives is lower
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the premium for female lives should be lower

  @TC_LIF_009
  Scenario: Verify NRI applicant premium calculation with medical flag
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the premium should calculate for an NRI applicant with medical flag

  @TC_LIF_010
  Scenario: Verify online channel premium calculation succeeds
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the premium calculation should succeed for online channel

  @TC_LIF_011
  Scenario: Verify death claim lodgement captures policy number
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the death claim lodgement should capture the policy number

  @TC_LIF_012
  Scenario: Verify claim type selection for natural death
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the claim type should be natural death

  @TC_LIF_013
  Scenario: Verify claim intimation date is recorded
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the claim intimation date should be recorded

  @TC_LIF_014
  Scenario: Verify claim settlement within 30 days for policy over 3 years
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the claim should settle within 30 days for policy over 3 years

  @TC_LIF_015
  Scenario: Verify investigation period of 90 days for early claims
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the investigation period should be 90 days for early claims

  @TC_LIF_016
  Scenario: Verify claim acknowledgement within 3 working days of intimation
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the claim acknowledgement should be within 3 working days of intimation

  @TC_LIF_017
  Scenario: Verify suicide within 12 months refunds 80 percent of premiums
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then suicide within 12 months should refund 80 percent of premiums

  @TC_LIF_018
  Scenario: Verify critical illness rider claim acceleration of 25 percent
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the critical illness rider claim should accelerate 25 percent

  @TC_LIF_019
  Scenario: Verify accidental death benefit claim processing
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the accidental death benefit claim should be processed

  @TC_LIF_020
  Scenario: Verify claim rejection for invalid policy number
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the claims tab
    Then the claim should be rejected for an invalid policy number

  @TC_EC_001
  Scenario: Minimum entry age boundary rejection at 17 years
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should reject entry age 17 years

  @TC_EC_002
  Scenario: Minimum entry age acceptance at 18 years
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should accept entry age 18 years

  @TC_EC_003
  Scenario: Maximum entry age rejection at 66 years
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should reject entry age 66 years

  @TC_EC_004
  Scenario: Maximum entry age acceptance at 65 years
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should accept entry age 65 years

  @TC_EC_005
  Scenario: Minimum policy term rejection at 4 years
    Given user is on the InsureCo Portal dashboard
    When user logs in with admin credentials
    And user selects the term plan product card
    Then the plan should reject policy term 4 years