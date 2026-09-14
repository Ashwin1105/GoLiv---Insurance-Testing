import { Page } from '@playwright/test';

export class BasePage {
  readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  loc(selector: string) {
    return this.page.locator(selector);
  }

  loginUsername() {
    return this.loc('[data-testid="login-username"]');
  }

  loginPassword() {
    return this.loc('[data-testid="login-password"]');
  }

  loginButton() {
    return this.loc('[data-testid="login-btn"]');
  }

  mainNav() {
    return this.loc('[data-testid="main-nav"]');
  }

  navTab0() {
    return this.loc('[data-testid="nav-tab-0"]');
  }

  navTab1() {
    return this.loc('[data-testid="nav-tab-1"]');
  }

  navTab2() {
    return this.loc('[data-testid="nav-tab-2"]');
  }

  navTab3() {
    return this.loc('[data-testid="nav-tab-3"]');
  }

  navTab4() {
    return this.loc('[data-testid="nav-tab-4"]');
  }

  logoutButton() {
    return this.loc('[data-testid="logout-btn"]');
  }

  dashboardPage() {
    return this.loc('[data-testid="dashboard-page"]');
  }

  productCard1() {
    return this.loc('[data-testid="product-card-1"]');
  }

  productCard2() {
    return this.loc('[data-testid="product-card-2"]');
  }

  productCard3() {
    return this.loc('[data-testid="product-card-3"]');
  }

  productCard4() {
    return this.loc('[data-testid="product-card-4"]');
  }
}