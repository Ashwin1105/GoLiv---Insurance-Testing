.
├── .github/
│   └── workflows/
│       └── playwright-bdd.yml     # GitHub Actions Workflow configuration
├── features/
│   ├── insureco_portal.feature    # Gherkin Scenarios for all 32 Test Cases
│   └── support/
│       ├── hooks.ts               # Browser initialization and hook setup
│       └── world.ts               # Playwright context sharing and State setup
├── step-definitions/
│   └── insureco_portal.steps.ts   # Combined Playwright Step Definitions
├── Jenkinsfile                    # CI pipeline file for Jenkins Server
├── package.json                   # NPM script configurations & dependencies
├── cucumber.js                    # Cucumber runner setup with Allure plugin
├── playwright.config.ts           # Optional Playwright underlying configuration
└── README.md                      # Project documentation (this file)