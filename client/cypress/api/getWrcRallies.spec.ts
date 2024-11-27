describe('GET /wrcrallies', () => {
    it('should get all rallies', () => {
        cy.request('GET', 'http://localhost:3000/wrcrallies')
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.be.an('array');
            });
    });
});
