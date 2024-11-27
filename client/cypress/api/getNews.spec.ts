describe('GET /news', () => {
    it('should get all news', () => {
        cy.request('GET', 'http://localhost:3000/news')
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.be.an('array');
            });
    });
});
