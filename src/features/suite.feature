Feature: InsureCo Portal Test Suite

  Background:
    Given the user is logged into the InsureCo Portal as "admin" with password "admin123"

  @C46
  Scenario: Verify term plan entry age minimum 18 years accepted
    When the user navigates to the term plan tab
    And the user enters age 18
    Then the minimum entry age of 18 years is accepted

  @C47
  Scenario: Verify term plan entry age maximum 65 years accepted
    When the user navigates to the term plan tab
    And the user enters age 65
    Then the maximum entry age of 65 years is accepted

  @C48
  Scenario: Verify policy term minimum 5 years is accepted
    When the user navigates to the term plan tab
    And the user enters policy term 5
    Then the minimum policy term of 5 years is accepted

  @C49
  Scenario: Verify policy term maximum 40 years is accepted
    When the user navigates to the term plan tab
    And the user enters policy term 40
    Then the maximum policy term of 40 years is accepted

  @C50
  Scenario: Verify minimum sum assured of 25 lakhs is enforced
    When the user navigates to the term plan tab
    And the user enters sum assured 2500000
    Then the sum assured is accepted

  @C51
  Scenario: Verify premium calculation for non-smoker male profile
    When the user navigates to the term plan tab
    And the user selects gender "Male" and smoker status "Non-Smoker"
    Then the premium is calculated correctly for non-smoker male profile

  @C52
  Scenario: Verify smoker premium loading is applied at issuance
    When the user navigates to the term plan tab
    And the user selects gender "Male" and smoker status "Smoker"
    Then the smoker premium loading is applied

  @C53
  Scenario: Verify premium calculation for female lives is lower
    When the user navigates to the term plan tab
    And the user calculates premium for "Female" and "Male" with same parameters
    Then the female premium is lower than the male premium

  @C213
  Scenario: Validate Null Plan Type Processing Behavior
    When the user navigates to tab 1
    And the user processes a plan with null type
    Then the system should handle null plan type processing behavior gracefully

  @C214
  Scenario: Verify Scheme Validation with Special Characters and Extreme Lengths
    When the user navigates to tab 1
    And the user validates scheme with special characters and extreme lengths
    Then the scheme validation rules should enforce the correct constraints

  @C215
  Scenario: Verify Age Band Calculation at Precision Boundaries
    When the user navigates to tab 1
    And the user calculates age band at precision boundaries
    Then the calculated age band should match expected precision boundaries

  @C216
  Scenario: Verify Tenure Rejection Below Minimum Threshold
    When the user navigates to tab 1
    And the user enters tenure below minimum threshold
    Then the system should reject the tenure below minimum threshold

  @C217
  Scenario: Validate Mutual Exclusion Constraints for Selected Schemes
    When the user navigates to tab 1
    And the user selects mutually exclusive schemes
    Then the system should validate and enforce mutual exclusion constraints

  @C218
  Scenario: Verify Post-Dated Plan Changes Constraints
    When the user navigates to tab 1
    And the user submits post-dated plan changes
    Then the system should verify and enforce post-dated plan changes constraints

  @C219
  Scenario: Evaluate Zero Value Calculation Resilience
    When the user navigates to tab 1
    And the user evaluates zero value inputs
    Then the calculation resilience should handle zero values correctly

  @C220
  Scenario: Verify Cancellation Concurrency with Payment Schedules
    When the user navigates to tab 1
    And the user triggers cancellation concurrently with payment schedules
    Then the system should verify cancellation concurrency rules

  @C221
  Scenario: Validate Expiry Boundary Resolution
    When the user navigates to tab 1
    And the user inputs expiry boundary dates
    Then the system should validate expiry boundary resolution correctly

  @C222
  Scenario: Verify Database Lock During Scheme Mutate Execution
    When the user navigates to tab 1
    And the user executes scheme mutation
    Then the database lock should be verified and handled safely

  @C223
  Scenario: Verify Overlapping Age Band Configuration Rules
    When the user navigates to tab 1
    And the user configures overlapping age bands
    Then the system should verify overlapping age band configuration rules

  @C224
  Scenario: Verify Configuration Fallback Logic
    When the user navigates to tab 1
    And the user triggers missing configuration scenario
    Then the system should fall back to the default configuration logic

  @TC_EC_001
  Scenario: Validate Null Plan Type Processing Behavior
    When the user navigates to tab 2
    And the user processes a plan with null type under EC context
    Then the system should validate null plan type processing behavior under EC

  @TC_EC_002
  Scenario: Verify Scheme Validation with Special Characters and Extreme Lengths
    When the user navigates to tab 2
    And the user validates scheme with special characters and extreme lengths under EC
    Then the system should enforce scheme validation constraints under EC

  @TC_EC_003
  Scenario: Verify Age Band Calculation at Precision Boundaries
    When the user navigates to tab 2
    And the user calculates age band at precision boundaries under EC
    Then the system should match expected precision boundaries under EC

  @TC_EC_004
  Scenario: Verify Tenure Rejection Below Minimum Threshold
    When the user navigates to tab 2
    And the user enters tenure below minimum threshold under EC
    Then the system should reject the tenure below minimum threshold under EC

  @TC_EC_005
  Scenario: Validate Mutual Exclusion Constraints for Selected Schemes
    When the user navigates to tab 2
    And the user selects mutually exclusive schemes under EC
    Then the system should enforce mutual exclusion constraints under EC

  @TC_EC_006
  Scenario: Verify Post-Dated Plan Changes Constraints
    When the user navigates to tab 2
    And the user submits post-dated plan changes under EC
    Then the system should enforce post-dated plan changes constraints under EC

  @TC_EC_007
  Scenario: Evaluate Zero Value Calculation Resilience
    When the user navigates to tab 2
    And the user evaluates zero value inputs under EC
    Then the system should resolve zero value calculation resilience under EC

  @TC_EC_008
  Scenario: Verify Cancellation Concurrency with Payment Schedules
    When the user navigates to tab 2
    And the user triggers cancellation concurrently with payment schedules under EC
    Then the system should verify cancellation concurrency under EC

  @TC_EC_009
  Scenario: Validate Expiry Boundary Resolution
    When the user navigates to tab 2
    And the user inputs expiry boundary dates under EC
    Then the system should validate expiry boundary resolution under EC

  @TC_EC_010
  Scenario: Verify Database Lock During Scheme Mutate Execution
    When the user navigates to tab 2
    And the user executes scheme mutation under EC
    Then the database lock should be verified under EC

  @TC_EC_011
  Scenario: Verify Overlapping Age Band Configuration Rules
    When the user navigates to tab 2
    And the user configures overlapping age bands under EC
    Then the system should verify overlapping age band configuration rules under EC

  @TC_EC_012
  Scenario: Verify Configuration Fallback Logic
    When the user navigates to tab 2
    And the user triggers missing configuration under EC
    Then the system should fall back to default configuration under EC