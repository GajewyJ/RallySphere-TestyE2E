import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';
import { BrowserRouter as Router } from 'react-router-dom';
import WRCLinks from './index';

describe('WRCLinks component', () => {
    it('renders correctly', () => {
        render(
            <Router>
                <WRCLinks />
            </Router>
        );
        
        const links = screen.getAllByRole('link');
        expect(links).toHaveLength(6);

        expect(links[0]).toHaveAttribute('href', '/wrc/news');
        expect(links[1]).toHaveAttribute('href', '/wrc/calendar');
        expect(links[2]).toHaveAttribute('href', '/wrc/drivers');
        expect(links[3]).toHaveAttribute('href', '/wrc/coDrivers');
        expect(links[4]).toHaveAttribute('href', '/wrc/teams');
        expect(links[5]).toHaveAttribute('href', 'https://www.rally.tv/');
    });
});
