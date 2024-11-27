describe('GET /wrcteams', () => {
    it('should get all teams', () => {
        cy.request('GET', 'http://localhost:3000/wrcteams')
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.be.an('array');
            });
    });
});
