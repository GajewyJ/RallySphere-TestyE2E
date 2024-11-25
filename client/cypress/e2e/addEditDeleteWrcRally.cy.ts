describe("WRC Rallies admin test", () => {
  beforeEach(() => {
    cy.viewport(1920, 1080);
    cy.visitLoginAdmin();
    cy.contains("WRC Rallies").click();
  });
  it("Adds, edits and deletes a new WRC rally", () => {
    cy.get(".addNewCarBtn").click();
    cy.get("input[name=name]").type("WRC Podlasie Rally");
    cy.get("input[name=season]").type("2024");
    cy.get("input[name=country]").type("Podlasie Kingdom");
    cy.get("input[name=beginning]").type("2024-03-10");
    cy.get("input[name=end]").type("2024-03-13");
    cy.get("button").contains("Add Rally").click();
    cy.get("td").contains("WRC Podlasie Rally").should("be.visible");
  });
  it("Edits a WRC rally", () => {
    cy.get(".editBtn").last().click();
    cy.get("input[name=name]").clear().type("Grand WRC Podlasie Rally");
    cy.get("input[name=beginning]").type("2024-03-10");
    cy.get("input[name=end]").type("2024-03-13");
    cy.get("button").contains("Update Rally").click();
    cy.get("td").contains("Grand WRC Podlasie Rally").should("be.visible");
  });
  it("Deletes a WRC rally", () => {
    cy.get(".deleteBtn").last().click();
  });
});
