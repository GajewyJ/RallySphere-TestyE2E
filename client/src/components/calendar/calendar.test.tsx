import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import Calendar from './index';

describe('Calendar component', () => {
    let mock: MockAdapter;

    beforeEach(() => {
        mock = new MockAdapter(axios);
    });

    afterEach(() => {
        mock.restore();
    });

    it('renders correctly with rallies', async () => {
        const data = [
            {
                id: 1,
                name: 'Rally 1',
                season: new Date().getFullYear().toString(),
                country: 'Country 1',
                beginning: new Date(),
                end: new Date()
            },
            {
                id: 2,
                name: 'Rally 2',
                season: new Date().getFullYear().toString(),
                country: 'Country 2',
                beginning: new Date(),
                end: new Date()
            }
        ];
    
        mock.onGet('http://localhost:3000/wrcrallies').reply(200, data);
    
        render(<Calendar />);
    
        await waitFor(() => screen.getByText('Rally 1'));
        await waitFor(() => screen.getByText('Rally 2'));
    
        const rallyNames = screen.getAllByText(/Rally \d/);
        expect(rallyNames).toHaveLength(2);
    });
    
    it('renders calendar is empty message when there is no data', async () => {
        mock.onGet('http://localhost:3000/wrcrallies').reply(200, []);
    
        render(<Calendar />);
    
        await waitFor(() => screen.getByText('Calendar is empty!'));
    
        const message = screen.getByText('Calendar is empty!');
        expect(message).toBeInTheDocument();
    });
});
