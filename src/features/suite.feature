Feature: InsureCo Portal regression suite

@TC_LIF_001
Scenario: Verify term plan entry age minimum 18 years accepted

@TC_LIF_002
Scenario: Verify term plan entry age maximum 65 years accepted

@TC_LIF_003
Scenario: Verify policy term minimum 5 years is accepted

@TC_LIF_004
Scenario: Verify policy term maximum 40 years is accepted

@TC_LIF_005
Scenario: Verify minimum sum assured of 25 lakhs is enforced

@TC_LIF_006
Scenario: Verify premium calculation for non-smoker male profile

@TC_LIF_007
Scenario: Verify smoker premium loading is applied at issuance

@TC_LIF_008
Scenario: Verify premium calculation for female lives is lower

@TC_LIF_009
Scenario: Verify NRI applicant premium calculation with medical flag

@TC_LIF_010
Scenario: Verify online channel premium calculation succeeds

@TC_LIF_011
Scenario: Verify death claim lodgement captures policy number

@TC_LIF_012
Scenario: Verify claim type selection for natural death

@TC_LIF_013
Scenario: Verify claim intimation date is recorded

@TC_LIF_014
Scenario: Verify claim settlement within 30 days for policy over 3 years

@TC_LIF_015
Scenario: Verify investigation period of 90 days for early claims

@TC_LIF_016
Scenario: Verify claim acknowledgement within 3 working days of intimation

@TC_LIF_017
Scenario: Verify suicide within 12 months refunds 80 percent of premiums

@TC_LIF_018
Scenario: Verify critical illness rider claim acceleration of 25 percent

@TC_LIF_019
Scenario: Verify accidental death benefit claim processing

@TC_LIF_020
Scenario: Verify claim rejection for invalid policy number

@TC_EC_001
Scenario: Reject term plan when applicant is 17 years old

@TC_EC_002
Scenario: Allow term plan when applicant is 18 years old

@TC_EC_003
Scenario: Reject term plan when applicant is 66 years old

@TC_EC_004
Scenario: Allow term plan when applicant is 65 years old

@TC_EC_005
Scenario: Reject term plan when policy term is 4 years

@TC_EC_006
Scenario: Allow term plan when policy term is 5 years

@TC_EC_007
Scenario: Reject term plan when policy term is 41 years

@TC_EC_008
Scenario: Allow term plan when policy term is 40 years

@TC_EC_009
Scenario: Reject term plan when sum assured is INR 24,99,999

@TC_EC_010
Scenario: Allow term plan when sum assured is INR 25,00,000

@TC_EC_011
Scenario: Process term plan with high sum assured subject to underwriting

@TC_EC_012
Scenario: Capture death claim type and policy number at lodgement

@TC_EC_013
Scenario: Persist claim intimation date at death claim lodgement

@TC_EC_014
Scenario: Acknowledge death claim within 3 working days

@TC_EC_015
Scenario: Reject death claim with invalid policy number

@TC_EC_016
Scenario: Settle death benefit within 30 days for policy older than 3 years

@TC_EC_001
Scenario: Non-smoker discount at boundary entry profile

@TC_EC_002
Scenario: Missing smoker declaration at proposal

@TC_EC_003
Scenario: Smoker loading applied at issuance

@TC_EC_004
Scenario: Female mortality table premium comparison

@TC_EC_005
Scenario: NRI applicant with mandatory medical flag

@TC_EC_006
Scenario: Online purchase channel premium calculation

@TC_EC_007
Scenario: Offline purchase channel premium calculation

@TC_EC_008
Scenario: Death claim lodgement mandatory fields

@TC_EC_009
Scenario: Invalid policy number at death claim lodgement

@TC_EC_001
Scenario: Reject death claim when claim intimation date is missing

@TC_EC_002
Scenario: Record claim intimation date for backdated or future-dated intimation

@TC_EC_003
Scenario: Verify lump-sum payout timeline after receipt of all documents

@TC_EC_004
Scenario: Settlement due date based on last pending document receipt

@TC_EC_005
Scenario: Track investigation completion within 90 days for early-policy claim

@TC_EC_006
Scenario: Flag overdue investigation beyond 90 days

@TC_EC_007
Scenario: Acknowledge claim by third working day

@TC_EC_008
Scenario: Acknowledge claim across non-working days

@TC_EC_009
Scenario: Apply 80 percent premium refund for suicide within 12 months of inception

@TC_EC_010
Scenario: Apply 80 percent premium refund for suicide within 12 months of revival

@TC_EC_011
Scenario: Accelerate 25 percent of Sum Assured for listed critical illness

@TC_EC_012
Scenario: Reject acceleration for non-listed or unsupported diagnosis

@TC_EC_001
Scenario: ADB rider claim at INR 1 Crore cap

@TC_EC_002
Scenario: ADB rider claim above INR 1 Crore cap

@TC_EC_003
Scenario: ADB rider claim with invalid rider amount

@TC_EC_001
Scenario: Reject death claim with malformed policy number format

@TC_EC_002
Scenario: Reject death claim with non-existent policy number

@TC_EC_003
Scenario: Reject death claim with policy number containing spaces or hidden characters