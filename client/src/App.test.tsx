import { render, screen } from '@testing-library/react';
import App from './App';
import '@testing-library/jest-dom'

jest.mock('./components/header', () => () => <div>Header component</div>);
jest.mock('./components/upcomingRalliesBar', () => () => <div>UpcomingRalliesBar component</div>);
jest.mock('./components/footer', () => () => <div>Footer component</div>);

describe('App', () => {
  it('renders Header, UpcomingRalliesBar, and Footer components', () => {
    render(
        <App />
    );

    expect(screen.getByText('Header component')).toBeInTheDocument();
    expect(screen.getByText('UpcomingRalliesBar component')).toBeInTheDocument();
    expect(screen.getByText('Footer component')).toBeInTheDocument();
  });
});
