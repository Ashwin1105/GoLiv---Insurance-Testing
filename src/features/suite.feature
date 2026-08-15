Feature: InsureCo Portal Life Insurance and Claims Regression Suite

  Background:
    Given I am on the login page of InsureCo Portal
    When I login with username "admin" and password "admin123"
    Then I should see the main dashboard

  @TC_LIF_001
  Scenario: Verify term plan entry age minimum 18 years accepted
    Given I navigate to the Life Insurance calculator tab
    When I enter the applicant age as 18
    Then the term plan entry age 18 should be accepted

  @TC_LIF_002
  Scenario: Verify term plan entry age maximum 65 years accepted
    Given I navigate to the Life Insurance calculator tab
    When I enter the applicant age as 65
    Then the term plan entry age 65 should be accepted

  @TC_LIF_003
  Scenario: Verify policy term minimum 5 years is accepted
    Given I navigate to the Life Insurance calculator tab
    When I enter the policy term as 5 years
    Then the policy term 5 years should be accepted

  @TC_LIF_004
  Scenario: Verify policy term maximum 40 years is accepted
    Given I navigate to the Life Insurance calculator tab
    When I enter the policy term as 40 years
    Then the policy term 40 years should be accepted

  @TC_LIF_005
  Scenario: Verify minimum sum assured of 25 lakhs is enforced
    Given I navigate to the Life Insurance calculator tab
    When I enter the sum assured as 2400000
    Then the system should display a sum assured validation error for 25 lakhs minimum

  @TC_LIF_006
  Scenario: Verify premium calculation for non-smoker male profile
    Given I navigate to the Life Insurance calculator tab
    When I configure profile with gender "Male", smoker status "Non-Smoker", and age 30
    Then the calculated premium for non-smoker male profile should be verified

  @TC_LIF_007
  Scenario: Verify smoker premium loading is applied at issuance
    Given I navigate to the Life Insurance calculator tab
    When I configure profile with gender "Male", smoker status "Smoker", and age 30
    Then the premium should include the mandatory smoker premium loading

  @TC_LIF_008
  Scenario: Verify premium calculation for female lives is lower
    Given I navigate to the Life Insurance calculator tab
    When I compare premium for female and male lives of same profile
    Then the premium for female life should be lower than male life

  @TC_LIF_009
  Scenario: Verify NRI applicant premium calculation with medical flag
    Given I navigate to the Life Insurance calculator tab
    When I configure profile as "NRI" applicant
    Then the NRI premium should show a mandatory medical exam flag

  @TC_LIF_010
  Scenario: Verify online channel premium calculation succeeds
    Given I navigate to the Life Insurance calculator tab
    When I select the premium purchase channel as "Online"
    Then the online premium calculation should succeed with valid results

  @TC_LIF_011
  Scenario: Verify death claim lodgement captures policy number
    Given I navigate to the Claims Management tab
    When I lodge a death claim with policy number "POL123456"
    Then the lodged claim should successfully capture policy number "POL123456"

  @TC_LIF_012
  Scenario: Verify claim type selection for natural death
    Given I navigate to the Claims Management tab
    When I select the claim type as "Natural Death"
    Then the claim type should be recorded as "Natural Death"

  @TC_LIF_013
  Scenario: Verify claim intimation date is recorded
    Given I navigate to the Claims Management tab
    When I set the claim intimation date to today
    Then the system should record and display the correct claim intimation date

  @TC_LIF_014
  Scenario: Verify claim settlement within 30 days for policy over 3 years
    Given I navigate to the Claims Management tab
    When I process a claim for a policy with duration 4 years
    Then the claim settlement timeline should display within 30 days

  @TC_LIF_015
  Scenario: Verify investigation period of 90 days for early claims
    Given I navigate to the Claims Management tab
    When I process an early claim for a policy with duration less than 3 years
    Then the investigation period of 90 days should be triggered and displayed

  @TC_LIF_016
  Scenario: Verify claim acknowledgement within 3 working days of intimation
    Given I navigate to the Claims Management tab
    When I submit a claim intimation
    Then the system should show acknowledgment verification indicating within 3 working days

  @TC_LIF_017
  Scenario: Verify suicide within 12 months refunds 80 percent of premiums
    Given I navigate to the Claims Management tab
    When I report a suicide claim occurring within 11 months of policy start
    Then the refund percentage should equal 80 percent of premiums paid

  @TC_LIF_018
  Scenario: Verify critical illness rider claim acceleration of 25 percent
    Given I navigate to the Claims Management tab
    When I submit a critical illness rider claim
    Then the claim acceleration percentage should be 25 percent of sum assured

  @TC_LIF_019
  Scenario: Verify accidental death benefit claim processing
    Given I navigate to the Claims Management tab
    When I process an accidental death claim
    Then the additional accidental death benefit should be calculated and verified

  @TC_LIF_020
  Scenario: Verify claim rejection for invalid policy number
    Given I navigate to the Claims Management tab
    When I attempt to lodge a claim with invalid policy number "INVALID_ID"
    Then the claim should be rejected and display an invalid policy error

  @TC_LIF_021
  Scenario: Verify grace period of 30 days for annual premium mode
    Given I navigate to the Policy Lifecycle tab
    When I select premium payment mode "Annual"
    Then the grace period should be displayed as 30 days

  @TC_LIF_022
  Scenario: Verify grace period of 15 days for monthly premium mode
    Given I navigate to the Policy Lifecycle tab
    When I select premium payment mode "Monthly"
    Then the grace period should be displayed as 15 days

  @TC_LIF_023
  Scenario: Verify lapsed policy revival allowed within 5 years
    Given I navigate to the Policy Lifecycle tab
    When I check revival period limits for a lapsed policy
    Then the revival window allowed should be up to 5 years

  @TC_LIF_024
  Scenario: Verify revival within 6 months without fresh medical underwriting
    Given I navigate to the Policy Lifecycle tab
    When I request policy revival with lapse duration of 5 months
    Then the revival should be allowed without fresh medical underwriting

  @TC_LIF_025
  Scenario: Verify paid-up value calculated correctly after 2 years premiums paid
    Given I navigate to the Policy Lifecycle tab
    When I input 2 years of premium payments for paid-up valuation
    Then the paid-up value calculation should be executed and verified

  @TC_LIF_026
  Scenario: Verify paid-up eligibility requires 3 consecutive premium years
    Given I navigate to the Policy Lifecycle tab
    When I input paid-up request with only 2 consecutive premium years
    Then the system should state that paid-up eligibility requires 3 consecutive years

  @TC_LIF_027
  Scenario: Verify policy lapse after grace period expiry
    Given I navigate to the Policy Lifecycle tab
    When the premium grace period expires without payment
    Then the policy status must transition to "Lapsed"

  @TC_LIF_028
  Scenario: Verify revival premium interest at 8 percent per annum
    Given I navigate to the Policy Lifecycle tab
    When I calculate policy revival cost
    Then the revival premium interest rate applied should be 8 percent per annum

  @TC_LIF_029
  Scenario: Verify free look period of 15 days for offline policy
    Given I navigate to the Policy Lifecycle tab
    When I check free look duration for "Offline" policy channel
    Then the free look period should be 15 days

  @TC_LIF_030
  Scenario: Verify free look period of 30 days for online policy
    Given I navigate to the Policy Lifecycle tab
    When I check free look duration for "Online" policy channel
    Then the free look period should be 30 days

  @TC_EC_STUB_AC_001
  Scenario: [NEEDS REVIEW] The minimum entry age for the term plan shall be 18 years.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement minimum age 18
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_002
  Scenario: [NEEDS REVIEW] The maximum entry age shall be 65 years.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement maximum age 65
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_003
  Scenario: [NEEDS REVIEW] The minimum policy term shall be 5 years.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement minimum policy term 5
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_004
  Scenario: [NEEDS REVIEW] The maximum policy term shall be 40 years.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement maximum policy term 40
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_005
  Scenario: [NEEDS REVIEW] The minimum Sum Assured shall be INR 25,00,000.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement minimum sum assured
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_006
  Scenario: [NEEDS REVIEW] Non-smokers shall receive premium discounts per the approved non-smoker rating table.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement non-smoker discount
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_007
  Scenario: [NEEDS REVIEW] Smoker status must be declared at proposal and a smoker loading applied at issuance.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement smoker loading
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_008
  Scenario: [NEEDS REVIEW] Female lives shall be rated using the female mortality table, producing a lower premium than male lives for the same profile.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement female mortality rating
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_009
  Scenario: [NEEDS REVIEW] NRI applicants may purchase a term plan; a mandatory medical examination flag shall be raised during premium calculation.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement NRI medical flag
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_010
  Scenario: [NEEDS REVIEW] The premium calculator shall support Online and Offline purchase channels and return a valid premium for each.
    Given I navigate to the Life Insurance calculator tab
    When I check requirement online and offline channels
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_011
  Scenario: [NEEDS REVIEW] A death claim shall capture policy number at lodgement.
    Given I navigate to the Claims Management tab
    When I check requirement death claim policy number
    Then it should match the stubbed requirement rule

  @TC_EC_STUB_AC_012
  Scenario: [NEEDS REVIEW] A death claim shall capture claim type at lodgement.
    Given I navigate to the Claims Management tab
    When I check requirement death claim type
    Then it should match the stubbed requirement rule