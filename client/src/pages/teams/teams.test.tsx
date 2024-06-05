import { render, screen } from '@testing-library/react';
import Teams from './index';
import '@testing-library/jest-dom'
import { MemoryRouter } from 'react-router-dom';

describe('Teams', () => {
  it('renders the TeamStandings component', () => {
    render(<MemoryRouter><Teams /></MemoryRouter>);
    const standings = screen.getByText('Team Standings');
    expect(standings).toBeInTheDocument();
  });

  it('sets the document title', () => {
    render(<MemoryRouter><Teams /></MemoryRouter>);
    expect(document.title).toEqual('RallySphere - WRC Team Standings');
  });
});
