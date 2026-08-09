And ... inherits Given/When/Then, but in step definitions we register it under Given/When/Then. Let's make sure we register `And` steps using `When` or `Then` appropriately but NO duplicate step texts. Let's write them clearly.
    *   *Rule 10:* "There is NO separate 'And' function... register the step under Given/When/Then based on its semantic meaning". So we register all "And the user..." as `When` (or whichever fits best, `When` is safe).
    *   Let's check the Gherkin feature file lines carefully to make sure every line has its exact counterpart.

    Let's write down the exact list of Given/When/Then we will write:
    1.  `Given('the user is logged into the InsureCo Portal as {string} with password {string}', ...)`
    2.  `When('the user navigates to the term plan tab', ...)`
    3.  `When('the user enters age {int}', ...)`
    4.  `Then('the minimum entry age of {int} years is accepted', ...)`
    5.  `Then('the maximum entry age of {int} years is accepted', ...)`
    6.  `When('the user enters policy term {int}', ...)`
    7.  `Then('the minimum policy term of {int} years is accepted', ...)`
    8.  `