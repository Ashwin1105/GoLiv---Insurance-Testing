import { Page, Locator } from '@playwright/test';

export abstract class BasePage {
  protected readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  loc(selector: string): Locator {
    return this.page.locator(selector);
  }
}