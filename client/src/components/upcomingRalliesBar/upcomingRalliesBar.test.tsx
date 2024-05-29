import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import UpcomingRalliesBar from './index';

describe('UpcomingRalliesBar component', () => {
    it('renders correctly', async () => {
        const mock = new MockAdapter(axios);
        const data = [
            {
                id: 1,
                name: 'Rally 1',
                season: '2024',
                country: 'Country 1',
                beginning: new Date(),
                end: new Date()
            },
            {
                id: 2,
                name: 'Rally 2',
                season: '2024',
                country: 'Country 2',
                beginning: new Date(),
                end: new Date()
            }
        ];

        mock.onGet('http://localhost:3000/wrcrallies/upcoming').reply(200, data);
        mock.onGet('http://localhost:3000/wrcrallies/ongoing').reply(200, []);

        render(<UpcomingRalliesBar />);

        await waitFor(() => screen.getByText('Upcoming: Rally 1'));
        await waitFor(() => screen.getByText('Upcoming: Rally 2'));

        const cards = screen.getAllByText(/Upcoming:/i);
        expect(cards).toHaveLength(2);
    });
});
