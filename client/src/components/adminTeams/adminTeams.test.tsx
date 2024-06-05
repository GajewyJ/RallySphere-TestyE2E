import '@testing-library/jest-dom';
import { fireEvent, render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import AdminTeams from './index';
import { BrowserRouter as Router } from 'react-router-dom';

describe('AdminTeams component', () => {
    let mock: MockAdapter;

    beforeEach(() => {
        mock = new MockAdapter(axios);
    });

    afterEach(() => {
        mock.restore();
    });

    it('renders correctly with teams', async () => {
        const data = [
            {
                id: 1,
                name: 'Team 1',
                basedIn: 'Country 1',
                establishment: 2000,
                principal: 'Principal 1',
                category: 'Category 1',
                brand: 'Brand 1',
                points: 100
            },
            {
                id: 2,
                name: 'Team 2',
                basedIn: 'Country 2',
                establishment: 2000,
                principal: 'Principal 2',
                category: 'Category 2',
                brand: 'Brand 2',
                points: 200
            }
        ];
    
        mock.onGet('http://localhost:3000/wrcTeams').reply(200, data);
    
        render(
            <Router>
                <AdminTeams />
            </Router>
        );
    
        await waitFor(() => screen.getByText('Team 1'));
        await waitFor(() => screen.getByText('Team 2'));
    
        const teamNames = screen.getAllByText(/Team \d/);
        expect(teamNames).toHaveLength(2);
    });

    it('checks if add button exists', async () => {
        mock.onGet('http://localhost:3000/wrcTeams').reply(200, []);
        mock.onPost('http://localhost:3000/wrcTeams').reply(200, {
            id: 3,
            name: 'Team 3',
            basedIn: 'Country 3',
            establishment: 2000,
            principal: 'Principal 3',
            category: 'Category 3',
            brand: 'Brand 3',
            points: 300
        });
    
        render(
            <Router>
                <AdminTeams />
            </Router>
        );
    
        await waitFor(() => expect(screen.queryByText('Loading...')).not.toBeInTheDocument());
    
        const addButton = screen.getByRole('button', { name: /Add a new Team/i });
        expect(addButton).toBeVisible();
    });
    
    
    it('shows error message when there is an error', async () => {
        mock.onGet('http://localhost:3000/wrcTeams').reply(500);

        render(
        <Router>
            <AdminTeams />
        </Router>
        );

        await waitFor(() => screen.getByText(/Error:/i));
    });

    it('shows loading message while fetching teams', () => {
        mock.onGet('http://localhost:3000/wrcTeams').reply(() => new Promise(() => {}));

        render(
        <Router>
            <AdminTeams />
        </Router>
        );

        expect(screen.getByText(/Loading.../i)).toBeInTheDocument();
    });

    it('calls deleteTeam function when delete button is clicked', async () => {
        const data = [
        {
            id: 1,
            name: 'Team 1',
            basedIn: 'Country 1',
            establishment: 2000,
            principal: 'Principal 1',
            category: 'Category 1',
            brand: 'Brand 1',
            points: 100
        }
        ];

        mock.onGet('http://localhost:3000/wrcTeams').reply(200, data);
        mock.onDelete('http://localhost:3000/wrcTeams/1').reply(200);

        render(
        <Router>
            <AdminTeams />
        </Router>
        );

        await waitFor(() => screen.getByText('Team 1'));

        const deleteButton = screen.getByRole('button', { name: /Delete/i });
        fireEvent.click(deleteButton);

        await waitFor(() => expect(screen.queryByText('Team 1')).not.toBeInTheDocument());
    });
});
