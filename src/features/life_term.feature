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

@C199
  Scenario: C199 - Verify acceptance of minimum entry age of exactly 18 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C199"
    Then a premium result should be shown for "C199"

@C200
  Scenario: C200 - Verify acceptance of maximum entry age of exactly 65 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C200"
    Then a premium result should be shown for "C200"

@C201
  Scenario: C201 - Verify rejection of applicant aged 17 years and 364 days
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C201"
    Then a premium result should be shown for "C201"

@C202
  Scenario: C202 - Verify rejection of applicant aged 65 years and 1 day
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C202"
    Then a premium result should be shown for "C202"

@C203
  Scenario: C203 - Verify acceptance of policy term of exactly 5 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C203"
    Then a premium result should be shown for "C203"

@C204
  Scenario: C204 - Verify acceptance of policy term of exactly 40 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C204"
    Then a premium result should be shown for "C204"

@C205
  Scenario: C205 - Verify rejection of policy term below 5 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C205"
    Then a premium result should be shown for "C205"

@C206
  Scenario: C206 - Verify rejection of policy term above 40 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C206"
    Then a premium result should be shown for "C206"

@C207
  Scenario: C207 - Verify acceptance of sum assured equal to exactly 25 lakhs
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C207"
    Then a premium result should be shown for "C207"

@C208
  Scenario: C208 - Verify rejection of sum assured below 25 lakhs
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C208"
    Then a premium result should be shown for "C208"

@C209
  Scenario: C209 - Verify premium dependency on age, gender, smoker, and sum assured
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C209"
    Then a premium result should be shown for "C209"

@C210
  Scenario: C210 - Verify baseline standard premium for Non-Smoker Male
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C210"
    Then a premium result should be shown for "C210"

@C211
  Scenario: C211 - Verify smoker loading application on base premium
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C211"
    Then a premium result should be shown for "C211"

@C212
  Scenario: C212 - Verify female applicant discount compared to identical male profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "C212"
    Then a premium result should be shown for "C212"

@TC_EC_001
  Scenario: TC_EC_001 - Verify acceptance of minimum entry age of exactly 18 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_001"
    Then a premium result should be shown for "TC_EC_001"

@TC_EC_002
  Scenario: TC_EC_002 - Verify acceptance of maximum entry age of exactly 65 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_002"
    Then a premium result should be shown for "TC_EC_002"

@TC_EC_003
  Scenario: TC_EC_003 - Verify rejection of applicant aged 17 years and 364 days
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_003"
    Then a premium result should be shown for "TC_EC_003"

@TC_EC_004
  Scenario: TC_EC_004 - Verify rejection of applicant aged 65 years and 1 day
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_004"
    Then a premium result should be shown for "TC_EC_004"

@TC_EC_005
  Scenario: TC_EC_005 - Verify acceptance of policy term of exactly 5 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_005"
    Then a premium result should be shown for "TC_EC_005"

@TC_EC_006
  Scenario: TC_EC_006 - Verify acceptance of policy term of exactly 40 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_006"
    Then a premium result should be shown for "TC_EC_006"

@TC_EC_007
  Scenario: TC_EC_007 - Verify rejection of policy term below 5 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_007"
    Then a premium result should be shown for "TC_EC_007"

@TC_EC_008
  Scenario: TC_EC_008 - Verify rejection of policy term above 40 years
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_008"
    Then a premium result should be shown for "TC_EC_008"

@TC_EC_009
  Scenario: TC_EC_009 - Verify acceptance of sum assured equal to exactly 25 lakhs
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_009"
    Then a premium result should be shown for "TC_EC_009"

@TC_EC_010
  Scenario: TC_EC_010 - Verify rejection of sum assured below 25 lakhs
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_010"
    Then a premium result should be shown for "TC_EC_010"

@TC_EC_011
  Scenario: TC_EC_011 - Verify premium dependency on age, gender, smoker, and sum assured
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_011"
    Then a premium result should be shown for "TC_EC_011"

@TC_EC_012
  Scenario: TC_EC_012 - Verify baseline standard premium for Non-Smoker Male
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_012"
    Then a premium result should be shown for "TC_EC_012"

@TC_EC_013
  Scenario: TC_EC_013 - Verify smoker loading application on base premium
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_013"
    Then a premium result should be shown for "TC_EC_013"

@TC_EC_014
  Scenario: TC_EC_014 - Verify female applicant discount compared to identical male profile
Given the user is logged in to the insurance portal
When the user opens the premium calculator
    And the user submits premium inputs for "TC_EC_014"
    Then a premium result should be shown for "TC_EC_014"

