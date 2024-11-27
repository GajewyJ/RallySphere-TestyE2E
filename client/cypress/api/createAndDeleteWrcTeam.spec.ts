describe('POST and DELETE /wrcteams', () => {
    it('should create a new team and then delete it', () => {
        const newTeam = {
            name: 'New Team',
            basedIn: 'Country',
            establishment: 2024,
            principal: 'Principal Name',
            category: 'Category',
            brand: 'Brand',
            points: 0,
        };
        cy.request('POST', 'http://localhost:3000/wrcteams', newTeam)
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('name', newTeam.name);
                expect(response.body).to.have.property('id');
                if (response.body.id) {
                    const newTeamId = response.body.id;
                    cy.request('DELETE', `http://localhost:3000/wrcteams/${newTeamId}`)
                        .then((response) => {
                            expect(response.status).to.eq(200);
                            expect(response.body).to.have.property('message', 'Data deleted successfully');
                        });
                }
            });
    });
});
