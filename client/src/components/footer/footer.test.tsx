import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';
import Footer from './index.tsx';

describe('Footer component', () => {
    it('renders correctly', () => {
        render(<Footer />);
        
        const headingElement = screen.getByRole('heading', { level: 3 });
        expect(headingElement).toBeInTheDocument();
        expect(headingElement).toHaveTextContent('©2024 Jakub Gajewy');

        const paragraphElement = screen.getByText('*Some data may be inaccurate or incomplete');
        expect(paragraphElement).toBeInTheDocument();
    });
});
