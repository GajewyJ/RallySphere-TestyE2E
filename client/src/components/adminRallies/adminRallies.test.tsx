import '@testing-library/jest-dom';
import { fireEvent, render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import AdminRallies from './index';
import { BrowserRouter as Router } from 'react-router-dom';

describe('AdminRallies component', () => {
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
                season: 2022,
                country: 'Country 1',
                beginning: '2022-01-01',
                end: '2022-01-05'
            },
            {
                id: 2,
                name: 'Rally 2',
                season: 2022,
                country: 'Country 2',
                beginning: '2022-02-01',
                end: '2022-02-05'
            }
        ];
    
        mock.onGet('http://localhost:3000/wrcRallies').reply(200, data);
    
        render(
            <Router>
                <AdminRallies />
            </Router>
        );
    
        await waitFor(() => screen.getByText('Rally 1'));
        await waitFor(() => screen.getByText('Rally 2'));
    
        const rallyNames = screen.getAllByText(/Rally \d/);
        expect(rallyNames).toHaveLength(2);
    });

    it('checks if add button exists', async () => {
        mock.onGet('http://localhost:3000/wrcRallies').reply(200, []);
        mock.onPost('http://localhost:3000/wrcRallies').reply(200, {
            id: 3,
            name: 'Rally 3',
            season: 2023,
            country: 'Country 3',
            beginning: '2023-01-01',
            end: '2023-01-05'
        });
    
        render(
            <Router>
                <AdminRallies />
            </Router>
        );
    
        await waitFor(() => expect(screen.queryByText('Loading...')).not.toBeInTheDocument());
    
        const addButton = screen.getByRole('button', { name: /Add a new Rally/i });
        expect(addButton).toBeVisible();
    });
    
    it('shows error message when there is an error', async () => {
        mock.onGet('http://localhost:3000/wrcRallies').reply(500);
    
        render(
          <Router>
            <AdminRallies />
          </Router>
        );
    
        await waitFor(() => screen.getByText(/Error:/i));
      });
    
    it('shows loading message while fetching rallies', () => {
        mock.onGet('http://localhost:3000/wrcRallies').reply(() => new Promise(() => {}));
    
        render(
          <Router>
            <AdminRallies />
          </Router>
        );
    
        expect(screen.getByText(/Loading.../i)).toBeInTheDocument();
    });
    
    it('calls deleteRally function when delete button is clicked', async () => {
        const data = [
          {
            id: 1,
            name: 'Rally 1',
            season: 2022,
            country: 'Country 1',
            beginning: '2022-01-01',
            end: '2022-01-05'
          }
        ];
    
        mock.onGet('http://localhost:3000/wrcRallies').reply(200, data);
        mock.onDelete('http://localhost:3000/wrcRallies/1').reply(200);
    
        render(
          <Router>
            <AdminRallies />
          </Router>
        );
    
        await waitFor(() => screen.getByText('Rally 1'));
    
        const deleteButton = screen.getByRole('button', { name: /Delete/i });
        fireEvent.click(deleteButton);
    
        await waitFor(() => expect(screen.queryByText('Rally 1')).not.toBeInTheDocument());
    });
});
