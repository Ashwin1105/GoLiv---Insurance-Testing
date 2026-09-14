import { defineConfig } from '@cucumber/cucumber';
import * as path from 'path';

export default defineConfig({
  default: {
    // Feature files location
    paths: [path.resolve('src/features/**/*.feature')],
    // Step definition files location
    require: [path.resolve('src/steps/**/*.ts')],
    // Reporters
    format: [
      'json:reports/cucumber-report.json',
      'allure-cucumberjs/reporter'
    ],
    // Run all test cases listed in the suite
    // (no tag filter applied to ensure every scenario is executed)
    publishQuiet: true
  }
});