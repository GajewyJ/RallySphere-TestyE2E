describe('POST /wrcrallies', () => {
    it('should create a new rally', () => {
        const newRally = {
            name: 'New Rally',
            season: 2024,
            country: 'Country',
            beginning: new Date().toISOString(),
            end: new Date().toISOString(),
        };
        cy.request('POST', 'http://localhost:3000/wrcrallies', newRally)
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('name', newRally.name);
                expect(response.body).to.have.property('id');
                if (response.body.id) {
                    const newRallyId = response.body.id;
                    cy.request('DELETE', `http://localhost:3000/wrcrallies/${newRallyId}`)
                        .then((response) => {
                            expect(response.status).to.eq(200);
                            expect(response.body).to.have.property('message', 'Rally successfully deleted');
                        });
                }
            });
    });
});
