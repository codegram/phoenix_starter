Cypress.Commands.add("checkinDb", () => {
  cy.request("POST", "/end-to-end/db/checkin").as("checkinDb");
});

Cypress.Commands.add("factoryDb", (schema, attrs) => {
  cy.log(`Creating a ${schema} via fullstack factory`);
  cy.request("POST", "/end-to-end/db/factory", {
    schema,
    attributes: attrs,
  }).as("factoryDb");
});
