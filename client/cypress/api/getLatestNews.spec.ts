describe('GET /news/latest', () => {
    it('should get the 3 latest news', () => {
        cy.request('GET', 'http://localhost:3000/news/latest')
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.be.an('array').that.has.lengthOf(3);
            });
    });
});
