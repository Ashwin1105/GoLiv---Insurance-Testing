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

@C225
  Scenario: C225 - AC_001 Empty Input Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C225"
    Then a premium result should be shown for "C225"

@C226
  Scenario: C226 - AC_002 Maximum Value Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C226"
    Then a premium result should be shown for "C226"

@C227
  Scenario: C227 - AC_003 Invalid Format Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C227"
    Then a premium result should be shown for "C227"

@C228
  Scenario: C228 - AC_004 Missing Field Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C228"
    Then a premium result should be shown for "C228"

@C229
  Scenario: C229 - AC_005 Duplicate Input Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C229"
    Then a premium result should be shown for "C229"

@C230
  Scenario: C230 - AC_006 Invalid Data Type Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C230"
    Then a premium result should be shown for "C230"

@C231
  Scenario: C231 - AC_007 Out-of-Range Value Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C231"
    Then a premium result should be shown for "C231"

@C232
  Scenario: C232 - AC_008 Null Pointer Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C232"
    Then a premium result should be shown for "C232"

@C233
  Scenario: C233 - AC_009 Timeout Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C233"
    Then a premium result should be shown for "C233"

@C234
  Scenario: C234 - AC_010 Concurrent Access Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C234"
    Then a premium result should be shown for "C234"

@C235
  Scenario: C235 - AC_011 Resource Leak Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C235"
    Then a premium result should be shown for "C235"

@C236
  Scenario: C236 - AC_012 Edge Case Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C236"
    Then a premium result should be shown for "C236"

@TC_EC_001
  Scenario: TC_EC_001 - AC_001 Empty Input Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - AC_002 Maximum Value Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - AC_003 Invalid Format Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - AC_004 Missing Field Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - AC_005 Duplicate Input Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - AC_006 Invalid Data Type Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - AC_007 Out-of-Range Value Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - AC_008 Null Pointer Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - AC_009 Timeout Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - AC_010 Concurrent Access Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - AC_011 Resource Leak Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - AC_012 Edge Case Test
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

