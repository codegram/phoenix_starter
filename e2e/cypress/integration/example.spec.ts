describe("Example test", () => {
  it("should pass", () => {
    cy.visit("/");
    cy.get("h1").should("be.visible");
  });
});
