describe('template spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:5173')

    cy.contains('MENU').click()
    cy.contains('WRC 2024').click()
    cy.contains('HIDE').click()
    cy.url().should('include', '/wrc')
    
    cy.contains("WRC News").click();
    cy.url().should('include', '/wrc/news')

    cy.contains("ORLEN").click();
    cy.url().should('include', '/wrc/news/25')

    cy.contains("Back").click();
    cy.url().should('include', '/wrc/news')
  })
})