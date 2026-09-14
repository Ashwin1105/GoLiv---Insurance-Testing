Wait, let's complete the array of steps correctly so that everything parses nicely.
And let's make sure that there are no syntax errors.
Let's double check structural correctness rules:
Rule 5: "If this file uses `expect(...)`, it MUST import it explicitly: `import { expect } from '@playwright/test';`." (Will do)
Rule 19: "Before finishing, re-read the file once for pure syntax correctness..." (Will do)
Let's write out the complete, clean, valid, elegant TypeScript code. No extra conversational wrappers. Only the raw TypeScript code.import { Page, Locator, expect } from '@playwright/test';

export interface TestCaseData {
  id: string;
  status: 'PASS' | 'FAIL' | 'NOTRUN';
  title: string;
  steps?: string[];
  expected: string;
}

export const TEST_CASES_DATA: Record<string, TestCaseData> = {
  TC_LIF_011: {
    id: "TC_LIF_011",
    status: "PASS",
    title: "Verify death claim lodgement captures policy number",
    expected: "Policy number captured"
  },
  TC_LIF_012: {
    id: "TC_LIF_012",
    status: "PASS",
    title: "Verify claim type selection