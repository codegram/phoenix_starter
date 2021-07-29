Cypress.Commands.add("createUser", (userRef = "currentUser", userData) => {
  const data = {
    username: "my_username",
    email: "fake@example.org",
    ...userData,
  };

  cy.factoryDb("user", {
    email: data.email,
    username: data.username,
  })
    .as(userRef)
    .its("status")
    .should("equal", 200);
});

Cypress.Commands.add("getResource", (ref) => {
  cy.get(`@${ref}`).then((response: any) => response.body);
});
