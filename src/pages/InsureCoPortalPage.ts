import { Page, expect } from '@playwright/test';

export class InsureCoPortalPage {
  readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  loginUsername() {
    return this.page.locator('[data-testid="login-username"]');
  }

  loginPassword() {
    return this.page.locator('[data-testid="login-password"]');
  }

  loginButton() {
    return this.page.locator('[data-testid="login-btn"]');
  }

  mainNav() {
    return this.page.locator('[data-testid="main-nav"]');
  }

  navTab0() {
    return this.page.locator('[data-testid="nav-tab-0"]');
  }

  navTab1() {
    return this.page.locator('[data-testid="nav-tab-1"]');
  }

  navTab2() {
    return this.page.locator('[data-testid="nav-tab-2"]');
  }

  navTab3() {
    return this.page.locator('[data-testid="nav-tab-3"]');
  }

  navTab4() {
    return this.page.locator('[data-testid="nav-tab-4"]');
  }

  logoutButton() {
    return this.page.locator('[data-testid="logout-btn"]');
  }

  dashboardPage() {
    return this.page.locator('[data-testid="dashboard-page"]');
  }

  productCard1() {
    return this.page.locator('[data-testid="product-card-1"]');
  }

  productCard2() {
    return this.page.locator('[data-testid="product-card-2"]');
  }

  productCard3() {
    return this.page.locator('[data-testid="product-card-3"]');
  }

  productCard4() {
    return this.page.locator('[data-testid="product-card-4"]');
  }
}