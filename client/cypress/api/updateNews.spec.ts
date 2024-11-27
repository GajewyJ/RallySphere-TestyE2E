describe('PUT /news/:id', () => {
    it('should update a news item', () => {
        const id = 1;
        const newPublicationDate = new Date();
        newPublicationDate.setMilliseconds(0);
        const formattedPublicationDate = newPublicationDate.toISOString();
        const updatedNewsItem = {
            title: 'Disaster for Evans: Martin resorts to phone to call notes',
            paragraph1: 'Co-driver Scott Martin found himself relying on his mobile phone to relay pace notes to Elfyn Evans after misplacing his physical notebook on Friday afternoon at Vodafone Rally de Portugal.',
            paragraph2: 'Panic ensued between the British duo just before the second running of Góis 2 when Martin discovered that his pace note book, containing crucial details of every twist and turn of the stage, had gone astray.',
            paragraph3: 'With no time to spare, Martin ingeniously resorted to using his mobile phone to access a digital copy of the notes. However, the bad luck continued for the pair as their Toyota GR Yaris sustained front-right tyre damage during the stage, costing almost one minute.',
            photo: 'f0304c1f-f738-4ecf-9943-69fe78d287fe_100524missing-pacenotes.jpg',
            publicationDate: formattedPublicationDate,
        };
        cy.request('PUT', `http://localhost:3000/news/${id}`, updatedNewsItem)
            .then((response) => {
                expect(response.status).to.eq(200);
                expect(response.body).to.have.property('publicationDate', formattedPublicationDate);
            });
    });
});
