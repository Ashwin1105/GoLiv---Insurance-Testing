import { defineConfig } from '@cucumber/cucumber';

export default defineConfig({
  default: {
    require: [
      'ts-node/register',
      'src/steps/**/*.ts',
    ],
    paths: ['src/features/**/*.feature'],
    format: [
      'json:reports/cucumber-report.json',
      'allure-cucumberjs/reporter',
    ],
    publishQuiet: true,
  },
});