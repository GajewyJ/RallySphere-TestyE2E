describe('Adding, editing and romoving car from database', () => {
  it('Adds car', () => {
    cy.visitLoginAdmin();

    cy.contains("Add a new Car").click();

    cy.get('input[name=brand]').type("testBrand1")
    cy.get('input[name=model]').type("testModel1")
    cy.get('textarea[name=description]').type("testDescription1")
    cy.get('input[name=photo_url]').type("testUrl1")
    cy.get('input[name=photo_html_attribution]').type("testHtml1")
    cy.get('select').select("WRC")
    
    cy.get('button[type=submit]').click();
    cy.url().should("include", "/admin")
    cy.contains("testBrand1");
    cy.contains("testModel1");
    cy.contains("testDescription1");
    cy.contains("testUrl1");
    cy.contains("testHtml1");

    cy.contains("Logout").click();
  })

  it('Edits car', () => {
    cy.visitLoginAdmin();

    cy.contains('testBrand1').parent().within(() => {
      cy.get('button').contains('Edit').click(); 
    });

    cy.get('input[name=brand]').type("1")
    cy.get('input[name=model]').type("1")
    cy.get('textarea[name=description]').type("1")
    cy.get('input[name=photo_url]').type("1")
    cy.get('input[name=photo_html_attribution]').type("1")
    cy.get('select').select("Group B")

    cy.get('button[type=submit]').click();
    cy.url().should("include", "/admin")
    cy.contains("testBrand11");
    cy.contains("testModel11");
    cy.contains("testDescription11");
    cy.contains("testUrl11");
    cy.contains("testHtml11");

    cy.contains("Logout").click();
  })

  it('Deletes car', () => {
    cy.visitLoginAdmin();

    cy.contains('testBrand11').parent().within(() => {
      cy.get('button').contains('Delete').click(); 
    });

    cy.url().should("include", "/admin")
    cy.contains('testBrand11').should('not.exist');
    
    cy.contains("Logout").click();
  })
})