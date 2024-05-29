import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import AllCategories from './index';
import { BrowserRouter as Router } from 'react-router-dom';

describe('AllCategories component', () => {
    let mock: MockAdapter;

    beforeEach(() => {
        mock = new MockAdapter(axios);
    });

    afterEach(() => {
        mock.restore();
    });

    it('renders correctly with categories', async () => {
        const data = [
            {
                id: 1,
                name: 'Category 1',
                years: 'Years 1',
                description: 'Description 1',
                chrono: 'Chrono 1',
                photo_url: 'Photo URL 1'
            },
            {
                id: 2,
                name: 'Category 2',
                years: 'Years 2',
                description: 'Description 2',
                chrono: 'Chrono 2',
                photo_url: 'Photo URL 2'
            }
        ];
    
        mock.onGet('http://localhost:3000/encCategories').reply(200, data);
    
        render(
            <Router>
                <AllCategories />
            </Router>
        );
    
        await waitFor(() => screen.getByText('Category 1'));
        await waitFor(() => screen.getByText('Category 2'));
    
        const categoryLinks = screen.getAllByRole('link');
        expect(categoryLinks).toHaveLength(2);
    });
    
    it('renders no groups found message when there is no data', async () => {
        mock.onGet('http://localhost:3000/encCategories').reply(200, []);
    
        render(
            <Router>
                <AllCategories />
            </Router>
        );
    
        await waitFor(() => screen.getByText('No groups found'));
    
        const message = screen.getByText('No groups found');
        expect(message).toBeInTheDocument();
    });
});
