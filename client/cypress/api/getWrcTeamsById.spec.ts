describe('GET /wrcteams/:id', () => {
    it('should get team by ID', () => {
        const id = 1;
        cy.request('GET', `http://localhost:3000/wrcteams/${id}`)
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('id', id);
            });
    });
});
