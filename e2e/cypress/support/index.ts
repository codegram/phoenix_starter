/* eslint-disable no-unused-vars */

// ***********************************************************
// This example support/index.ts is processed and
// loaded automatically before your test files.
//
// This is a great place to put global configuration and
// behavior that modifies Cypress.
//
// You can change the location of this file or turn off
// automatically serving support files with the
// 'supportFile' configuration option.
//
// You can read more here:
// https://on.cypress.io/configuration
// ***********************************************************

import "@testing-library/cypress/add-commands";
import "cypress-file-upload";

import "./commands/backend";
import "./commands/factories";

declare global {
  namespace Cypress {
    interface Chainable {
      // Backend
      checkinDb(): Chainable;
      factoryDb(schema: any, attrs: any): Chainable;

      // Factories
      createUser(userRef?: string, userData?: any): Chainable;
      getResource(ref: string): Chainable;
    }
  }
}

beforeEach(() => {
  // Before each test, we reset the DB
  cy.checkinDb();
});
