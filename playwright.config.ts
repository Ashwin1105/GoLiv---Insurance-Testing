import { PlaywrightTestConfig, devices } from '@playwright/test';

const config: PlaywrightTestConfig = {
  testDir: './tests',
  timeout: 30 * 1000,
  expect: {
    timeout: 15 * 1000,
  },
  workers: 1,
  reporter: 'list',
  globalTimeout: 60 * 1000,
  forbidOnly: !!process.env.CI,
  preserveOutput: 'failures-only',
  outputDir: 'test-results',
  retries: 0,
  headless: false,
  screenshot: 'on',
  video: 'off',
  trace: 'on',
  metadata: {
    version: '1.0.0',
  },
  use: {
    baseURL: 'http://host.docker.internal:5176',
    headless: false,
    screenshot: 'on-failure',
    trace: 'on',
  },
  projects: [
    {
      name: 'insureco-portal',
      testMatch: ['tests/*.feature'],
      use: {
        browserName: 'chromium',
        browserVersion: 'latest',
        capabilities: [
          {
            browserName: 'chrome',
            chromeOptions: {
              args: ['--no-sandbox', '--disable-setuid-sandbox'],
            },
          },
        ],
      },
    },
  ],
};

export default config;