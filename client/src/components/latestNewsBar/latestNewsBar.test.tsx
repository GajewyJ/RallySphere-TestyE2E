import '@testing-library/jest-dom'
import { render, screen, waitFor } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import axios from 'axios';
import LatestNewsBar from './index';

jest.mock('axios');

describe('LatestNewsBar', () => {
  it('renders latest news when data is available', async () => {
    const news = [
      {
        id: 1,
        title: 'Test News',
        paragraph1: 'Paragraph 1',
        paragraph2: 'Paragraph 2',
        paragraph3: 'Paragraph 3',
        photo: 'test.jpg',
        publicationDate: new Date(),
      },
    ];

    (axios.get as jest.Mock).mockImplementationOnce(() => Promise.resolve({ data: news }));

    render(<MemoryRouter><LatestNewsBar /></MemoryRouter>);

    await waitFor(() => screen.getByText('Test News'));

    expect(screen.getByText('Test News')).toBeInTheDocument();
    expect(screen.getByAltText('Test News')).toBeInTheDocument();
  });

  it('renders no news message when no data is available', async () => {
    (axios.get as jest.Mock).mockImplementationOnce(() => Promise.resolve({ data: [] }));

    render(<MemoryRouter><LatestNewsBar /></MemoryRouter>);

    await waitFor(() => screen.getByText('No latest News found'));

    expect(screen.getByText('No latest News found')).toBeInTheDocument();
  });
});
