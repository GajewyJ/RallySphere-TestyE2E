describe('POST and DELETE /news', () => {
    it('should create a new news item and then delete it', () => {
        const newNewsItem = {
            title: 'New Title',
            paragraph1: 'Paragraph 1',
            paragraph2: 'Paragraph 2',
            paragraph3: 'Paragraph 3',
            photo: 'photo_url',
            publicationDate: new Date().toISOString(),
        };
        cy.request('POST', 'http://localhost:3000/news', newNewsItem)
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('title', newNewsItem.title);
                expect(response.body).to.have.property('id');
                if (response.body.id) {
                    const newNewsItemId = response.body.id
                    cy.request('DELETE', `http://localhost:3000/news/${newNewsItemId}`)
                        .then((response) => {
                            expect(response.status).to.eq(200);
                            expect(response.body).to.have.property('message', 'Data deleted successfully');
                        });
                }
            });
    });
});
