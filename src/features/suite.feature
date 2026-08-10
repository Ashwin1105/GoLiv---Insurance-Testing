Feature: InsureCo Portal
  As a user
  I want to ensure that the InsureCo Portal functions correctly
  So that I can use the portal efficiently

  @C46
  Scenario: Verify term plan entry age minimum 18 years accepted
    Given I am logged in to the InsureCo Portal
    When I enter a term plan entry age of 18 years
    Then the term plan entry age is accepted

  @C47
  Scenario: Verify term plan entry age maximum 65 years accepted
    Given I am logged in to the InsureCo Portal
    When I enter a term plan entry age of 65 years
    Then the term plan entry age is accepted

  @C48
  Scenario: Verify policy term minimum 5 years is accepted
    Given I am logged in to the InsureCo Portal
    When I enter a policy term of 5 years
    Then the policy term is accepted

  @C49
  Scenario: Verify policy term maximum 40 years is accepted
    Given I am logged in to the InsureCo Portal
    When I enter a policy term of 40 years
    Then the policy term is accepted

  @C50
  Scenario: Verify minimum sum assured of 25 lakhs is enforced
    Given I am logged in to the InsureCo Portal
    When I enter a sum assured of 25 lakhs
    Then the sum assured is accepted

  @C51
  Scenario: Verify premium calculation for non-smoker male profile
    Given I am logged in to the InsureCo Portal
    When I enter a non-smoker male profile
    Then the premium calculation is correct

  @C52
  Scenario: Verify smoker premium loading is applied at issuance
    Given I am logged in to the InsureCo Portal
    When I enter a smoker profile
    Then the premium loading is applied

  @C53
  Scenario: Verify premium calculation for female lives is lower
    Given I am logged in to the InsureCo Portal
    When I enter a female profile
    Then the premium calculation is lower

  @C225
  Scenario: AC_001 Empty Input Test
    Given I am logged in to the InsureCo Portal
    When I enter empty input
    Then the input is rejected

  @C226
  Scenario: AC_002 Maximum Value Test
    Given I am logged in to the InsureCo Portal
    When I enter the maximum value
    Then the input is accepted

  @C227
  Scenario: AC_003 Invalid Format Test
    Given I am logged in to the InsureCo Portal
    When I enter an invalid format
    Then the input is rejected

  @C228
  Scenario: AC_004 Missing Field Test
    Given I am logged in to the InsureCo Portal
    When I leave a field empty
    Then the field is required

  @C229
  Scenario: AC_005 Duplicate Input Test
    Given I am logged in to the InsureCo Portal
    When I enter duplicate input
    Then the input is rejected

  @C230
  Scenario: AC_006 Invalid Data Type Test
    Given I am logged in to the InsureCo Portal
    When I enter an invalid data type
    Then the input is rejected

  @C231
  Scenario: AC_007 Out-of-Range Value Test
    Given I am logged in to the InsureCo Portal
    When I enter an out-of-range value
    Then the input is rejected

  @C232
  Scenario: AC_008 Null Pointer Test
    Given I am logged in to the InsureCo Portal
    When I enter a null pointer
    Then the input is rejected

  @C233
  Scenario: AC_009 Timeout Test
    Given I am logged in to the InsureCo Portal
    When I wait for a timeout
    Then the timeout is handled

  @C234
  Scenario: AC_010 Concurrent Access Test
    Given I am logged in to the InsureCo Portal
    When I access the portal concurrently
    Then the portal handles concurrent access

  @C235
  Scenario: AC_011 Resource Leak Test
    Given I am logged in to the InsureCo Portal
    When I access the portal and close it
    Then the resources are released

  @C236
  Scenario: AC_012 Edge Case Test
    Given I am logged in to the InsureCo Portal
    When I enter an edge case input
    Then the input is handled correctly

  @TC_EC_001
  Scenario: AC_001 Empty Input Test
    Given I am logged in to the InsureCo Portal
    When I enter empty input
    Then the input is rejected

  @TC_EC_002
  Scenario: AC_002 Maximum Value Test
    Given I am logged in to the InsureCo Portal
    When I enter the maximum value
    Then the input is accepted

  @TC_EC_003
  Scenario: AC_003 Invalid Format Test
    Given I am logged in to the InsureCo Portal
    When I enter an invalid format
    Then the input is rejected

  @TC_EC_004
  Scenario: AC_004 Missing Field Test
    Given I am logged in to the InsureCo Portal
    When I leave a field empty
    Then the field is required

  @TC_EC_005
  Scenario: AC_005 Duplicate Input Test
    Given I am logged in to the InsureCo Portal
    When I enter duplicate input
    Then the input is rejected

  @TC_EC_006
  Scenario: AC_006 Invalid Data Type Test
    Given I am logged in to the InsureCo Portal
    When I enter an invalid data type
    Then the input is rejected

  @TC_EC_007
  Scenario: AC_007 Out-of-Range Value Test
    Given I am logged in to the InsureCo Portal
    When I enter an out-of-range value
    Then the input is rejected

  @TC_EC_008
  Scenario: AC_008 Null Pointer Test
    Given I am logged in to the InsureCo Portal
    When I enter a null pointer
    Then the input is rejected

  @TC_EC_009
  Scenario: AC_009 Timeout Test
    Given I am logged in to the InsureCo Portal
    When I wait for a timeout
    Then the timeout is handled

  @TC_EC_010
  Scenario: AC_010 Concurrent Access Test
    Given I am logged in to the InsureCo Portal
    When I access the portal concurrently
    Then the portal handles concurrent access

  @TC_EC_011
  Scenario: AC_011 Resource Leak Test
    Given I am logged in to the InsureCo Portal
    When I access the portal and close it
    Then the resources are released

  @TC_EC_012
  Scenario: AC_012 Edge Case Test
    Given I am logged in to the InsureCo Portal
    When I enter an edge case input
    Then the input is handled correctly