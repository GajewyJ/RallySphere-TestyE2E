/// <reference types="cypress" />

declare namespace Cypress {
    interface Chainable<Subject = any> {
        visitLoginAdmin(): Chainable<any>;
    }
  }