describe('Watch rally test', () => {
  it('Opens rally watch website', () => {
    cy.visit('http://localhost:5173')
    cy.viewport(1920, 1080)
    cy.contains('WRC 2024').click()
    cy.url().should('contain', '/wrc')
    cy.contains('Watch').click()
  })
})