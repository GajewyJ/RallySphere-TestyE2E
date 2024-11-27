describe('GET /news/:id', () => {
    it('should get news by ID', () => {
        const id = 1;
        cy.request('GET', `http://localhost:3000/news/${id}`)
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('id', id);
            });
    });
});
