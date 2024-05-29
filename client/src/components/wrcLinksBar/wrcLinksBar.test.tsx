import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';
import { BrowserRouter as Router } from 'react-router-dom';
import WRCLinksBar from './index';

describe('WRCLinksBar component', () => {
    it('renders correctly', () => {
        render(
            <Router>
                <WRCLinksBar />
            </Router>
        );
        
        const headingElement = screen.getByRole('heading', { level: 1 });
        expect(headingElement).toBeInTheDocument();
        expect(headingElement).toHaveTextContent('WRC Standings');

        const driversLink = screen.getByText('Drivers');
        expect(driversLink).toBeInTheDocument();
        expect(driversLink.getAttribute('href')).toBe('/wrc/drivers');

        const coDriversLink = screen.getByText('Co-Drivers');
        expect(coDriversLink).toBeInTheDocument();
        expect(coDriversLink.getAttribute('href')).toBe('/wrc/coDrivers');

        const teamsLink = screen.getByText('Teams');
        expect(teamsLink).toBeInTheDocument();
        expect(teamsLink.getAttribute('href')).toBe('/wrc/teams');
    });
});
