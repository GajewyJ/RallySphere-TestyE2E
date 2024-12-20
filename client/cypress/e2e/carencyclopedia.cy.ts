describe('Car encyclopedia tests', () => {
  it('Shows information about Alfa Romeo Alfasud TI', () => {
    cy.visitMainPage()
    cy.contains('MENU').click()
    cy.contains('Car Encyclopedia').click()
    cy.url().should('include', '/groups')

    cy.contains('HIDE').click()
    cy.contains('Group 4').click()
    cy.url().should('include', '/groups/5')

    cy.get('.singleCarA').should('contain', 'Alfa Romeo Alfasud TI')
    cy.contains('Alfa Romeo Alfasud TI').click()
    cy.url().should('include', '/groups/5/46')
    
    cy.get('p').should('contain', 'revolutionary design')
    cy.contains('Back').click()
    cy.url().should('include', '/groups/5')
  })
})