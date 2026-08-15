import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  timeout: 60 * 1000,
  fullyParallel: false,
  use: {
    baseURL: 'http://localhost:5176',
    headless: false,
    screenshot: 'only-on-failure',
  },
});