import { render, waitFor, screen } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import AdminCategories from './index';
import { BrowserRouter as Router } from 'react-router-dom';
import '@testing-library/jest-dom';

describe('AdminCategories component', () => {
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
        name: 'Category 1',
        years: 'Years 1',
        description: 'Description 1',
        chrono: 1,
        photo_url: 'Photo URL 1',
      },
      {
        id: 2,
        name: 'Category 2',
        years: 'Years 2',
        description: 'Description 2',
        chrono: 2,
        photo_url: 'Photo URL 2',
      },
    ];

    mock.onGet('http://localhost:3000/encCategories').reply(200, data);

    render(
      <Router>
        <AdminCategories />
      </Router>
    );

    await waitFor(() => screen.getByText('Category 1'));
    await waitFor(() => screen.getByText('Category 2'));

    const categoryNames = screen.getAllByText(/Category \d/);
    expect(categoryNames).toHaveLength(2);
  });
});
