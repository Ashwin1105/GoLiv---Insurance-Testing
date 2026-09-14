import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  timeout: 30 * 1000,
  testDir: './tests',
  expect: {
    timeout: 5000,
  },
  fullyParallel: true,
  reporter: [
    ['list'],
    ['html'],
    // Uncomment the line below if Allure reporting is set up in the project
    // ['allure-playwright'],
  ],
  use: {
    baseURL: 'http://localhost:5176',
    headless: false,
    screenshot: 'only-on-failure',
    trace: 'on-first-retry',
    video: 'retain-on-failure',
  },
  projects: [
    {
      name: 'chromium',
      use: {
        ...devices['Desktop Chrome'],
      },
    },
    {
      name: 'firefox',
      use: {
        ...devices['Desktop Firefox'],
      },
    },
    {
      name: 'webkit',
      use: {
        ...devices['Desktop Safari'],
      },
    },
  ],
});