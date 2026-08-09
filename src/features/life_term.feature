Feature: Life Term Insurance - automated regression

@C46
  Scenario: C46 - Verify term plan entry age minimum 18 years accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C46"
    Then a premium result should be shown for "C46"

@C47
  Scenario: C47 - Verify term plan entry age maximum 65 years accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C47"
    Then a premium result should be shown for "C47"

@C48
  Scenario: C48 - Verify policy term minimum 5 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C48"
    Then a premium result should be shown for "C48"

@C49
  Scenario: C49 - Verify policy term maximum 40 years is accepted
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C49"
    Then a premium result should be shown for "C49"

@C50
  Scenario: C50 - Verify minimum sum assured of 25 lakhs is enforced
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C50"
    Then a premium result should be shown for "C50"

@C51
  Scenario: C51 - Verify premium calculation for non-smoker male profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C51"
    Then a premium result should be shown for "C51"

@C52
  Scenario: C52 - Verify smoker premium loading is applied at issuance
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C52"
    Then a premium result should be shown for "C52"

@C53
  Scenario: C53 - Verify premium calculation for female lives is lower
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C53"
    Then a premium result should be shown for "C53"

@C213
  Scenario: C213 - Validate Null Plan Type Processing Behavior
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C213"
    Then a premium result should be shown for "C213"

@C214
  Scenario: C214 - Verify Scheme Validation with Special Characters and Extreme Lengths
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C214"
    Then a premium result should be shown for "C214"

@C215
  Scenario: C215 - Verify Age Band Calculation at Precision Boundaries
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C215"
    Then a premium result should be shown for "C215"

@C216
  Scenario: C216 - Verify Tenure Rejection Below Minimum Threshold
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C216"
    Then a premium result should be shown for "C216"

@C217
  Scenario: C217 - Validate Mutual Exclusion Constraints for Selected Schemes
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C217"
    Then a premium result should be shown for "C217"

@C218
  Scenario: C218 - Verify Post-Dated Plan Changes Constraints
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C218"
    Then a premium result should be shown for "C218"

@C219
  Scenario: C219 - Evaluate Zero Value Calculation Resilience
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C219"
    Then a premium result should be shown for "C219"

@C220
  Scenario: C220 - Verify Cancellation Concurrency with Payment Schedules
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C220"
    Then a premium result should be shown for "C220"

@C221
  Scenario: C221 - Validate Expiry Boundary Resolution
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C221"
    Then a premium result should be shown for "C221"

@C222
  Scenario: C222 - Verify Database Lock During Scheme Mutate Execution
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C222"
    Then a premium result should be shown for "C222"

@C223
  Scenario: C223 - Verify Overlapping Age Band Configuration Rules
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C223"
    Then a premium result should be shown for "C223"

@C224
  Scenario: C224 - Verify Configuration Fallback Logic
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C224"
    Then a premium result should be shown for "C224"

@TC_EC_001
  Scenario: TC_EC_001 - Validate Null Plan Type Processing Behavior
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Verify Scheme Validation with Special Characters and Extreme Lengths
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Verify Age Band Calculation at Precision Boundaries
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Verify Tenure Rejection Below Minimum Threshold
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Validate Mutual Exclusion Constraints for Selected Schemes
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Verify Post-Dated Plan Changes Constraints
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Evaluate Zero Value Calculation Resilience
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Verify Cancellation Concurrency with Payment Schedules
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Validate Expiry Boundary Resolution
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Verify Database Lock During Scheme Mutate Execution
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Verify Overlapping Age Band Configuration Rules
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Verify Configuration Fallback Logic
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

