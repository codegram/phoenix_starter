describe("Example test", () => {
  it("should pass", () => {
    cy.visit("/");
    cy.findByText("Welcome to Phoenix!").should("be.visible");
  });
});
