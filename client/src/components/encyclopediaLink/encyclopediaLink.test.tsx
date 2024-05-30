import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import EncyclopediaLink from './index.tsx';

describe('EncyclopediaLink component', () => {
    it('renders correctly', () => {
        render(
            <MemoryRouter>
                <EncyclopediaLink />
            </MemoryRouter>
        );
        
        const linkElement = screen.getByRole('link', { name: /Car Encyclopedia/i });
        expect(linkElement).toBeInTheDocument();
        expect(linkElement).toHaveAttribute('href', '/groups');

        const imageElement = screen.getByRole('img');
        expect(imageElement).toBeInTheDocument();
        expect(imageElement).toHaveAttribute('src', 'https://upload.wikimedia.org/wikipedia/commons/c/cc/2020_Rally_Bohemia_Legend_-_Ulip_-_Audi_Sport_Quattro_S1_E2.jpg');
    });
});
