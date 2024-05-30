import { render, waitFor, screen } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import AdminCoDrivers from './index';
import { BrowserRouter as Router } from 'react-router-dom';
import '@testing-library/jest-dom';

describe('AdminCoDrivers component', () => {
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
        firstName: 'Co-Driver 1',
        lastName: 'Lastname 1',
        country: 'Country 1',
        team: 'Team 1',
        points: 100,
      },
      {
        id: 2,
        firstName: 'Co-Driver 2',
        lastName: 'Lastname 2',
        country: 'Country 2',
        team: 'Team 2',
        points: 200,
      },
    ];

    mock.onGet('http://localhost:3000/wrcCoDrivers').reply(200, data);

    render(
      <Router>
        <AdminCoDrivers />
      </Router>
    );

    await waitFor(() => screen.getByText('Co-Driver 1'));
    await waitFor(() => screen.getByText('Co-Driver 2'));

    const coDriverNames = screen.getAllByText(/Co-Driver \d/);
    expect(coDriverNames).toHaveLength(2);
  });
});
