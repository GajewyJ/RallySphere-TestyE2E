describe('Homepage to single news page and "back" button', () => {
  it('passes', () => {
    cy.visitMainPage()

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