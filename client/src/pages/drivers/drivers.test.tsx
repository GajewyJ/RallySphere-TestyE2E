import { render, screen } from '@testing-library/react';
import Drivers from './index';
import '@testing-library/jest-dom'

jest.mock('../../components/driverStandings', () => () => <div>DriverStandings component</div>);

describe('Drivers', () => {
  it('renders DriverStandings component', () => {
    render(<Drivers />);
    expect(screen.getByText('DriverStandings component')).toBeInTheDocument();
  });

  it('sets the document title', () => {
    render(<Drivers />);
    expect(document.title).toEqual('RallySphere - WRC Driver Standings');
  });
});
