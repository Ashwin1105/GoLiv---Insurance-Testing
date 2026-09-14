Feature: InsureCo Portal Claim Management

@TC_LIF_011
Scenario: Verify death claim lodgement captures policy number
  Given I am logged into InsureCo Portal
  When I lodge a death claim providing a valid policy number
  Then the system captures and displays the policy number correctly

@TC_LIF_012
Scenario: Verify claim type selection for natural death
  Given I am logged into InsureCo Portal
  When I select "Natural Death" as the claim type in the claim intimation form
  Then the claim type is recorded as "Natural Death"

@TC_LIF_013
Scenario: Verify claim intimation date is recorded
  Given I am logged into InsureCo Portal
  When I enter the claim intimation date as "2026-09-10" in the claim form
  Then the system records the intimation date accurately

@TC_LIF_014
Scenario: Verify claim settlement within 30 days for policy over 3 years
  Given I am logged into InsureCo Portal
  When I submit a death claim for a policy older than 3 years
  Then the claim is settled within 30 days of document receipt

@TC_LIF_015
Scenario: Verify investigation period of 90 days for early claims
  Given I am logged into InsureCo Portal
  When I submit a death claim for a policy younger than 3 years
  Then the investigation is completed within 90 days

@TC_LIF_016
Scenario: Verify claim acknowledgement within 3 working days of intimation
  Given I am logged into InsureCo Portal
  When I lodge a claim and the system sends an acknowledgement email
  Then the acknowledgement is sent within 3 working days of intimation

@TC_LIF_017
Scenario: Verify suicide within 12 months refunds 80 percent of premiums
  Given I am logged into InsureCo Portal
  When I submit a suicide death claim within 12 months of policy start
  Then the system refunds 80% of the paid premiums

@TC_LIF_018
Scenario: Verify critical illness rider claim acceleration of 25 percent
  Given I am logged into InsureCo Portal
  When I submit a critical illness claim
  Then the rider accelerates the sum assured by 25%

@TC_LIF_019
Scenario: Verify accidental death benefit claim processing
  Given I am logged into InsureCo Portal
  When I submit an accidental death claim
  Then the accidental death benefit is processed according to policy terms

@TC_LIF_020
Scenario: Verify claim rejection for invalid policy number
  Given I am logged into InsureCo Portal
  When I submit a claim with an invalid policy number
  Then the system rejects the claim with an appropriate error message

@TC_EC_001
Scenario: Validate rejection when claim type is omitted
  Given I open the claim intimation screen
  When I leave the claim type field blank and fill policy number and other mandatory fields
  And I submit the claim
  Then the system displays error 'Claim type is mandatory' and does not accept the claim

@TC_EC_002
Scenario: Validate rejection when policy number is omitted
  Given I access the claim intimation form
  When I enter a claim type but leave the policy number empty, provide claimant details and submit
  Then the system returns error 'Policy number is required' and prevents claim lodgement

@TC_EC_003
Scenario: Reject claim with non‑alphanumeric policy number
  Given I open the claim entry screen
  When I enter a claim type and input policy number as '@#%$!123'
  And I submit the claim
  Then the system shows validation error 'Invalid policy number format' and does not accept the claim

@TC_EC_004
Scenario: System rejects claim without intimation date
  Given I open the claim lodgement screen
  When I leave the intimation date field blank and complete other mandatory fields
  And I submit the claim
  Then the system displays error 'Intimation date is required' and prevents submission

@TC_EC_005
Scenario: Validate rejection of future‑dated intimation
  Given I open the claim entry form
  When I enter intimation date as "2026-10-01" and fill other required fields
  And I submit the claim
  Then the system returns error 'Intimation date cannot be in the future' and blocks submission

@TC_EC_006
Scenario: Verify no lump‑sum SLA for 3‑year‑old policy
  Given I lodge a death claim for a policy that is exactly 3 years old
  When the system records the claim
  Then the claim is routed to the investigation workflow instead of a 30‑day lump‑sum payment

@TC_EC_007
Scenario: Detect late lump‑sum payment beyond 30‑day SLA
  Given a claim payment is processed on "2026-09-02" (31 days after document receipt)
  When I check the SLA monitoring module
  Then the system raises an SLA breach alert for AC_003

@TC_EC_008
Scenario: Validate on‑time investigation at 90‑day limit
  Given investigation activities are performed
  When the investigation is marked as completed on "2026-08-30" (90th day)
  Then the system records the investigation as 'within SLA' and no breach is raised

@TC_EC_009
Scenario: Detect SLA breach when investigation exceeds 90 days
  Given investigation is completed on "2026-07-01" (91st day)
  When I review the SLA monitoring report
  Then the system generates an SLA breach alert for AC_004

@TC_EC_010
Scenario: Validate acknowledgment on third working day
  Given the system sends an acknowledgment email on Monday, "2026-09-12"
  When I verify the acknowledgment timestamp against the SLA rule
  Then the system marks the acknowledgment as compliant with AC_005

@TC_EC_011
Scenario: Detect late acknowledgment beyond 3 working days
  Given the system dispatches an acknowledgment on Friday, "2026-09-09" (fourth working day)
  When I check the SLA compliance module
  Then the system generates a breach alert for AC_005

@TC_EC_012
Scenario: Validate 80% refund for suicide claim at 11 months
  Given I submit a suicide death claim
  When the system identifies the suicide occurred within 12‑month window
  Then the refund amount displayed is INR 120,000 (80% of premiums) and the claim is processed accordingly

@TC_EC_013
Scenario: Validate full refund for suicide at 12‑month threshold
  Given I lodge a suicide claim
  When the system calculates the policy age as 12 months
  Then the system refunds 100% of premiums (INR 200,000) as per AC_006

@TC_EC_014
Scenario: Confirm full refund for suicide claim beyond 12 months
  Given I submit a claim with suicide cause
  When the system checks that policy age is greater than 12 months
  Then the refund amount is calculated as INR 180,000 (100% of premiums)

@TC_EC_015
Scenario: Accelerate 25% SA on diagnosis at policy inception
  Given I submit a claim with diagnosis date equal to the policy issuance date
  When the system calculates the accelerated amount
  Then the payout includes INR 125,000 (25% of SA) as accelerated benefit in addition to remaining benefits

@TC_EC_016
Scenario: Accelerate 25% SA on maximum SA policy
  Given I lodge a claim indicating diagnosis date
  When the system computes 25% of INR 2,500,000
  Then the accelerated amount equals INR 625,000 and is added to the payout

@TC_EC_017
Scenario: Cap accidental death payout at INR 1 Crore
  Given I submit an accidental death claim
  When the system aggregates base SA and rider SA and applies an INR 1 Crore ceiling
  Then the payout is limited to INR 1,00,00,000 despite a calculated total of INR 10,50,00,000

@TC_EC_018
Scenario: Full accidental death payout under cap
  Given I lodge an accidental death claim
  When the system adds base SA and rider SA
  Then the total payout does not exceed INR 1 Crore and equals INR 5,50,00,000

@TC_EC_019
Scenario: Invalid policy number format rejection
  Given I attempt to lodge a claim with a malformed policy number
  When the system validates the policy number format
  Then the claim is rejected with error "Invalid policy number"

@TC_EC_020
Scenario: Non‑existent policy number rejection
  Given I submit a claim with a non‑existent policy number
  When the system performs lookup against the policy repository
  Then the claim is rejected with error "Policy number not found"