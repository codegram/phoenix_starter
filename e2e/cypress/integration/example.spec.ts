describe("Example test", () => {
  it("tests the DOM", () => {
    cy.visit("/");
    cy.findByText("Welcome to Phoenix!").should("be.visible");
  });

  /* Example using backend factories.
     It's commented out because the backend doesn't have any model yet, so we
     can't insert anything to the DB.
  */
  // it("uses backend factories", () => {
  //   cy.createUser("currentUser", { username: "custom_username" });
  //   cy.getResource("currentUser").then((user) => {
  //     expect(user.username).to.eq("custom_username");
  //   });
  // });
});
