import { render, screen } from '@testing-library/react';
import WRC from './index';
import '@testing-library/jest-dom'
import { MemoryRouter } from 'react-router-dom';

describe('WRC', () => {
  it('renders the WRCLinks component', () => {
    render(<MemoryRouter><WRC /></MemoryRouter>);
    const linkElement = screen.getByText('WRC News');
    expect(linkElement).toBeInTheDocument();
  });

  it('sets the document title', () => {
    render(<MemoryRouter><WRC /></MemoryRouter>);
    let date = new Date(Date.now())
    let year = date.getFullYear()
    expect(document.title).toEqual('RallySphere - WRC ' + year);
  });
});
