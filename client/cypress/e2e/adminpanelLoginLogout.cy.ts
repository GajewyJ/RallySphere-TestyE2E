describe('Admin panel logging in and out', () => {
  it('Correct data', () => {
    cy.visit('http://localhost:5173/admin')

    cy.get('input[name=username]').type("admin")
    cy.get('input[name=password]').type("admin")

    cy.contains("Sign In").click();
    cy.url().should("include", "/admin")

    cy.contains("Logout").click();
    cy.url().should("include", "/admin")
  })

  it('Incorrect username', () => {
    cy.visit('http://localhost:5173/admin')

    cy.get('input[name=username]').type("admin1")
    cy.get('input[name=password]').type("admin")

    cy.contains("Sign In").click();

    cy.on('window:alert', (alertText) => {
      expect(alertText).to.equal('Invalid credentials');
    });
  })

  it('Incorrect password', () => {
    cy.visit('http://localhost:5173/admin')

    cy.get('input[name=username]').type("admin")
    cy.get('input[name=password]').type("admin1")

    cy.contains("Sign In").click();

    cy.on('window:alert', (alertText) => {
      expect(alertText).to.equal('Invalid credentials');
    });
  })

  it('Incorrect username and password', () => {
    cy.visit('http://localhost:5173/admin')

    cy.get('input[name=username]').type("admin1")
    cy.get('input[name=password]').type("admin1")

    cy.contains("Sign In").click();

    cy.on('window:alert', (alertText) => {
      expect(alertText).to.equal('Invalid credentials');
    });
  })
})