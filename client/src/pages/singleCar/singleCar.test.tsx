import { render, waitFor, screen } from '@testing-library/react';
import { MemoryRouter, Route, Routes } from 'react-router-dom';
import axios from 'axios';
import SingleCar from './index';
import '@testing-library/jest-dom'

jest.mock('axios');

const mockCar = {
  id: 1,
  brand: 'Test Brand',
  model: 'Test Model',
  description: 'This is a test car.',
  photo_url: 'test.jpg',
  photo_html_attribution: '<a href="https://example.com">Photo</a>',
  category: 1,
  enc_categories: {
    name: 'Test Category',
  },
};

describe('SingleCar', () => {
  it('renders car details correctly', async () => {
    (axios.get as jest.Mock).mockResolvedValueOnce({ data: mockCar });

    render(
      <MemoryRouter initialEntries={['/encCars/1/1']}>
        <Routes>
            <Route path="/encCars/:cat_id/:id" element={<SingleCar/>}/>
        </Routes>
      </MemoryRouter>
    );

    await waitFor(() => expect(axios.get).toHaveBeenCalledTimes(1));

    expect(screen.getByText(`${mockCar.brand} ${mockCar.model}`)).toBeInTheDocument();
    expect(screen.getByText(mockCar.description)).toBeInTheDocument();
    expect(screen.getByText(mockCar.enc_categories.name)).toBeInTheDocument();
  });

  it('renders 404 message when car is not found', async () => {
    (axios.get as jest.Mock).mockRejectedValueOnce(new Error());

    render(
      <MemoryRouter initialEntries={['/encCars/1/1']}>
        <Routes>
            <Route path="/encCars/:cat_id/:id" element={<SingleCar/>}/>
        </Routes>
      </MemoryRouter>
    );

    await waitFor(() => expect(axios.get).toHaveBeenCalled());

    expect(screen.getByText('404 Not found')).toBeInTheDocument();
    expect(screen.getByText('Our server is not working or this car does not exist')).toBeInTheDocument();
  });
});
