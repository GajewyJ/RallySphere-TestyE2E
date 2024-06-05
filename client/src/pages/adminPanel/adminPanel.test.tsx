import { render, fireEvent } from '@testing-library/react';
import AdminPanel from './index';
import '@testing-library/jest-dom'

describe('AdminPanel', () => {
  it('renders without crashing', () => {
    render(<AdminPanel />);
  });

  it('shows login form when not logged in', () => {
    const { getByText } = render(<AdminPanel />);
    expect(getByText(/sign in/i)).toBeInTheDocument();
  });

  it('shows admin navigation when logged in', () => {
    Storage.prototype.getItem = jest.fn(() => JSON.stringify({ id: 1, username: 'admin', password: 'password' }));

    const { getByText } = render(<AdminPanel />);
    expect(getByText(/cars/i)).toBeInTheDocument();
    expect(getByText(/groups/i)).toBeInTheDocument();
  });

  it('logs out on logout button click', () => {
    const { getByText } = render(<AdminPanel />);
    fireEvent.click(getByText(/logout/i));
    expect(getByText(/sign in/i)).toBeInTheDocument();
  });

  it('renders correct content based on active tab', () => {
    Storage.prototype.getItem = jest.fn(() => JSON.stringify({ id: 1, username: 'admin', password: 'password' }));

    const { getByText } = render(<AdminPanel />);
    fireEvent.click(getByText(/groups/i));
    expect(getByText(/groups/i)).toBeInTheDocument();
  });
});
