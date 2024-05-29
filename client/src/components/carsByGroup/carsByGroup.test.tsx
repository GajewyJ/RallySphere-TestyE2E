import '@testing-library/jest-dom';
import { render, screen, waitFor } from '@testing-library/react';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';
import CarsByGroup from './index';
import { MemoryRouter, Route, Routes } from 'react-router-dom';

describe('CarsByGroup component', () => {
    let mock: MockAdapter;

    beforeEach(() => {
        mock = new MockAdapter(axios);
    });

    afterEach(() => {
        mock.restore();
    });

    it('renders correctly with cars', async () => {
        const data = [
            {
                id: 1,
                brand: 'Brand 1',
                model: 'Model 1',
                description: 'Description 1',
                photo_url: 'Photo URL 1',
                photo_html_attribution: 'Photo HTML Attribution 1',
                category: 1,
                enc_categories: {
                    name: 'Category 1'
                }
            },
            {
                id: 2,
                brand: 'Brand 2',
                model: 'Model 2',
                description: 'Description 2',
                photo_url: 'Photo URL 2',
                photo_html_attribution: 'Photo HTML Attribution 2',
                category: 2,
                enc_categories: {
                    name: 'Category 2'
                }
            }
        ];
    
        mock.onGet('http://localhost:3000/encCars/1').reply(200, data);
    
        render(
            <MemoryRouter initialEntries={['/groups/1']}>
                <Routes>
                    <Route path="/groups/:cat_id" element={<CarsByGroup />} />
                </Routes>
            </MemoryRouter>
        );
    
        await waitFor(() => screen.getByText('Brand 1 Model 1'));
        await waitFor(() => screen.getByText('Brand 2 Model 2'));
    
        const carLinks = screen.getAllByRole('link');
        expect(carLinks).toHaveLength(2);
    });
    
    it('renders no cars found message when there is no data', async () => {
        mock.onGet('http://localhost:3000/encCars/1').reply(200, []);
    
        render(
            <MemoryRouter initialEntries={['/groups/1']}>
                <Routes>
                    <Route path="/groups/:cat_id" element={<CarsByGroup />} />
                </Routes>
            </MemoryRouter>
        );
    
        await waitFor(() => screen.getByText('No cars found in this category.'));
    
        const message = screen.getByText('No cars found in this category.');
        expect(message).toBeInTheDocument();
    });
});
