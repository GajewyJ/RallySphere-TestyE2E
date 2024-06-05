import { render, waitFor, screen } from '@testing-library/react';
import { MemoryRouter, Route, Routes } from 'react-router-dom';
import axios from 'axios';
import SingleNews from './index';
import '@testing-library/jest-dom'

jest.mock('axios');

const mockNews = {
  id: 1,
  title: 'Test News',
  paragraph1: 'This is a test news item.',
  paragraph2: 'This is the second paragraph of the test news.',
  paragraph3: 'This is the third paragraph of the test news.',
  photo: 'test.jpg',
  publicationDate: new Date(),
};

describe('SingleNews', () => {
  it('renders news details correctly', async () => {
    (axios.get as jest.Mock).mockResolvedValueOnce({ data: mockNews });

    render(
      <MemoryRouter initialEntries={['/news/1']}>
        <Routes>
            <Route path="/news/:id" element={<SingleNews/>}/>
        </Routes>
      </MemoryRouter>
    );

    await waitFor(() => expect(axios.get).toHaveBeenCalledTimes(1));

    expect(screen.getByText(mockNews.title)).toBeInTheDocument();
    expect(screen.getByText(mockNews.paragraph1)).toBeInTheDocument();
    expect(screen.getByText(mockNews.paragraph2)).toBeInTheDocument();
    expect(screen.getByText(mockNews.paragraph3)).toBeInTheDocument();
  });

  it('renders 404 message when news is not found', async () => {
    (axios.get as jest.Mock).mockRejectedValueOnce(new Error());

    render(
      <MemoryRouter initialEntries={['/news/1']}>
        <Routes>
            <Route path="/news/:id" element={<SingleNews/>}/>
        </Routes>
      </MemoryRouter>
    );

    await waitFor(() => expect(axios.get).toHaveBeenCalled());

    expect(screen.getByText('404 Not found')).toBeInTheDocument();
    expect(screen.getByText('Our server is not working or this news item does not exist')).toBeInTheDocument();
  });
});
