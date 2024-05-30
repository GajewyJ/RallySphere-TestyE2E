import '@testing-library/jest-dom';
import { render, screen} from '@testing-library/react';
import axios from 'axios';
import AdminDrivers from './index';

jest.mock('axios');
const mockedAxios = axios as jest.Mocked<typeof axios>;

describe('AdminDrivers', () => {
  test('fetches drivers from an API and displays them', async () => {
    const drivers = [
      { id: 1, firstName: 'Driver1', lastName: 'Last1', country: 'Country1', team: 'Team1', points: 100 },
      { id: 2, firstName: 'Driver2', lastName: 'Last2', country: 'Country2', team: 'Team2', points: 200 },
    ];

    mockedAxios.get.mockResolvedValueOnce({ data: drivers });

    render(<AdminDrivers />);

    expect(await screen.findByText('Driver1')).toBeInTheDocument();
    expect(screen.getByText('Last1')).toBeInTheDocument();
    expect(screen.getByText('Country1')).toBeInTheDocument();
    expect(screen.getByText('Team1')).toBeInTheDocument();
    expect(screen.getByText('100')).toBeInTheDocument();

    expect(screen.getByText('Driver2')).toBeInTheDocument();
    expect(screen.getByText('Last2')).toBeInTheDocument();
    expect(screen.getByText('Country2')).toBeInTheDocument();
    expect(screen.getByText('Team2')).toBeInTheDocument();
    expect(screen.getByText('200')).toBeInTheDocument();
  });
});
