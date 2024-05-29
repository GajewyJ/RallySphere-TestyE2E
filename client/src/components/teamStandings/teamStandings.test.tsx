import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import TeamStandings from './index';

describe('TeamStandings component', () => {
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
                name: 'Team 1',
                basedIn: 'Country 1',
                establishment: new Date(),
                principal: 'Principal 1',
                category: 'Category 1',
                brand: 'Brand 1',
                points: 100
            },
            {
                id: 2,
                name: 'Team 2',
                basedIn: 'Country 2',
                establishment: new Date(),
                principal: 'Principal 2',
                category: 'Category 2',
                brand: 'Brand 2',
                points: 200
            }
        ];
    
        mock.onGet('http://localhost:3000/wrcteams').reply(200, data);
    
        render(<TeamStandings />);
    
        await waitFor(() => screen.getByText('Team 1'));
        await waitFor(() => screen.getByText('Team 2'));
    
        const rows = screen.getAllByText((_, node) => {
            const hasText = (node: Element | null) => node !== null && (node.textContent === 'Team 1' || node.textContent === 'Team 2');
            const nodeHasText = node ? hasText(node) : false;
            const childrenDontHaveText = node ? Array.from(node.children).every(
              child => !hasText(child)
            ) : false;
            return nodeHasText && childrenDontHaveText;
          });
        expect(rows).toHaveLength(2);
    });
    
    it('renders no teams found message when there is no data', async () => {
        mock.onGet('http://localhost:3000/wrcteams').reply(200, []);
    
        render(<TeamStandings />);
    
        await waitFor(() => screen.getByText('No teams found'));
    
        const message = screen.getByText('No teams found');
        expect(message).toBeInTheDocument();
    });
    
});
