describe('GET /wrcrallies/ongoing', () => {
    it('should get no ongoing rallies', () => {
        cy.request('GET', 'http://localhost:3000/wrcrallies/ongoing')
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('message', 'No ongoing WRC rallies')
            });
    });
});
