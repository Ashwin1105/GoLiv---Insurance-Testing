import { defineConfig } from '@cucumber/cucumber';

export default defineConfig({
  default: {
    paths: ['src/features/**/*.feature'],
    require: ['src/steps/**/*.ts'],
    format: ['allure-cucumberjs/reporter'],
    publishQuiet: true,
  },
});