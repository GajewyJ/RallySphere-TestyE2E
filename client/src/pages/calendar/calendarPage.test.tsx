import { render, screen } from '@testing-library/react';
import CalendarPage from './index';
import '@testing-library/jest-dom'

describe('CalendarPage', () => {
    it('renders the Calendar component', () => {
        render(<CalendarPage />);
        const calendar = screen.getByText((_, node) => {
          const hasText = (node: Element | null) => node ? node.textContent === 'WRC 2024 Calendar' : false;
          const nodeHasText = node ? hasText(node) : false;
          const childrenDontHaveText = node ? Array.from(node.children).every(
            child => !hasText(child as Element)
          ) : false;
      
          return nodeHasText && childrenDontHaveText;
        });
        expect(calendar).toBeInTheDocument();
    });
      
    it('sets the document title', () => {
        render(<CalendarPage />);
        expect(document.title).toEqual('RallySphere - WRC Calendar');
    });
});
