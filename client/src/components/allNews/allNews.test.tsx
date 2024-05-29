import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import AllNews from './index';
import { BrowserRouter as Router } from 'react-router-dom';

describe('AllNews component', () => {
    let mock: MockAdapter;

    beforeEach(() => {
        mock = new MockAdapter(axios);
    });

    afterEach(() => {
        mock.restore();
    });

    it('renders correctly with news', async () => {
        const data = [
            {
                id: 1,
                title: 'News 1',
                paragraph1: 'Paragraph 1',
                paragraph2: 'Paragraph 2',
                paragraph3: 'Paragraph 3',
                photo: 'Photo 1',
                publicationDate: new Date()
            },
            {
                id: 2,
                title: 'News 2',
                paragraph1: 'Paragraph 1',
                paragraph2: 'Paragraph 2',
                paragraph3: 'Paragraph 3',
                photo: 'Photo 2',
                publicationDate: new Date()
            }
        ];
    
        mock.onGet('http://localhost:3000/news').reply(200, data);
    
        render(
            <Router>
                <AllNews />
            </Router>
        );
    
        await waitFor(() => screen.getByText('News 1'));
        await waitFor(() => screen.getByText('News 2'));
    
        const newsLinks = screen.getAllByRole('link');
        expect(newsLinks).toHaveLength(2);
    });
    
    it('renders no news found message when there is no data', async () => {
        mock.onGet('http://localhost:3000/news').reply(200, []);
    
        render(
            <Router>
                <AllNews />
            </Router>
        );
    
        await waitFor(() => screen.getByText('No news found'));
    
        const message = screen.getByText('No news found');
        expect(message).toBeInTheDocument();
    });
});
