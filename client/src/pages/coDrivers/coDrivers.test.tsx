import { render, screen } from '@testing-library/react';
import '@testing-library/jest-dom'
import CoDrivers from './index';

jest.mock('../../components/coDriverStandings', () => () => <div>CoDriverStandings component</div>);

describe('CoDrivers', () => {
  it('renders CoDriverStandings component', () => {
    render(<CoDrivers />);
    expect(screen.getByText('CoDriverStandings component')).toBeInTheDocument();
  });

  it('sets the document title', () => {
    render(<CoDrivers />);
    expect(document.title).toEqual('RallySphere - WRC Co-Driver Standings');
  });
});
