import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import DriverStandings from './index';

describe('DriverStandings component', () => {
    let mock: MockAdapter;

    beforeEach(() => {
        mock = new MockAdapter(axios);
    });

    afterEach(() => {
        mock.restore();
    });

    it('renders correctly', async () => {
        const data = [
            {
                id: 1,
                firstName: 'Driver 1',
                lastName: 'Lastname 1',
                country: 'Country 1',
                team: 'Team 1',
                points: 100
            },
            {
                id: 2,
                firstName: 'Driver 2',
                lastName: 'Lastname 2',
                country: 'Country 2',
                team: 'Team 2',
                points: 200
            }
        ];
    
        mock.onGet('http://localhost:3000/wrcDrivers').reply(200, data);
    
        render(<DriverStandings />);
    
        await waitFor(() => screen.getByText('Driver 1 Lastname 1'));
        await waitFor(() => screen.getByText('Driver 2 Lastname 2'));
    
        const rows = screen.getAllByText((_, node) => {
            const hasText = (node: Element | null) => node !== null && (node.textContent === 'Driver 1 Lastname 1' || node.textContent === 'Driver 2 Lastname 2');
            const nodeHasText = node ? hasText(node) : false;
            const childrenDontHaveText = node ? Array.from(node.children).every(
              child => !hasText(child)
            ) : false;
            return nodeHasText && childrenDontHaveText;
          });
        expect(rows).toHaveLength(2);
    });
    
    it('renders no drivers found message when there is no data', async () => {
        mock.onGet('http://localhost:3000/wrcDrivers').reply(200, []);
    
        render(<DriverStandings />);
    
        await waitFor(() => screen.getByText('No drivers found'));
    
        const message = screen.getByText('No drivers found');
        expect(message).toBeInTheDocument();
    });
    
});
