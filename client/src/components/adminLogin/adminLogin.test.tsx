import '@testing-library/jest-dom';
import { render, fireEvent, waitFor } from '@testing-library/react';
import AdminLogin from './index';
import axios from 'axios';
import MockAdapter from 'axios-mock-adapter';

var mock = new MockAdapter(axios);
mock.onGet('http://localhost:3000/admins').reply(200, [
  { id: 1, username: 'admin', password: 'admin' },
]);

describe('AdminLogin', () => {
  it('renders correctly', () => {
    const { getByLabelText, getByText } = render(<AdminLogin onLoginSuccess={() => {}} onLoginError={() => {}} />);
    expect(getByLabelText(/Username:/i)).toBeInTheDocument();
    expect(getByLabelText(/Password:/i)).toBeInTheDocument();
    expect(getByText(/Sign In/i)).toBeInTheDocument();
  });

  it('updates username and password on change', () => {
    const { getByLabelText } = render(<AdminLogin onLoginSuccess={() => {}} onLoginError={() => {}} />);
    const usernameInput = getByLabelText(/Username:/i) as HTMLInputElement;
    const passwordInput = getByLabelText(/Password:/i) as HTMLInputElement;

    fireEvent.change(usernameInput, { target: { value: 'testuser' } });
    expect(usernameInput.value).toBe('testuser');

    fireEvent.change(passwordInput, { target: { value: 'testpass' } });
    expect(passwordInput.value).toBe('testpass');
  });

  it('calls onLoginSuccess when login is successful', async () => {
    const mockOnLoginSuccess = jest.fn();
    const { getByLabelText, getByText } = render(<AdminLogin onLoginSuccess={mockOnLoginSuccess} onLoginError={() => {}} />);
    const usernameInput = getByLabelText(/Username:/i) as HTMLInputElement;
    const passwordInput = getByLabelText(/Password:/i) as HTMLInputElement;
    const signInButton = getByText(/Sign In/i);

    fireEvent.change(usernameInput, { target: { value: 'admin' } });
    fireEvent.change(passwordInput, { target: { value: 'admin' } });
    fireEvent.click(signInButton);

    await waitFor(() => expect(mockOnLoginSuccess).toHaveBeenCalled());
  });

  it('calls onLoginError when login fails', async () => {
    const mockOnLoginError = jest.fn();
    const { getByLabelText, getByText } = render(<AdminLogin onLoginSuccess={() => {}} onLoginError={mockOnLoginError} />);
    const usernameInput = getByLabelText(/Username:/i) as HTMLInputElement;
    const passwordInput = getByLabelText(/Password:/i) as HTMLInputElement;
    const signInButton = getByText(/Sign In/i);

    fireEvent.change(usernameInput, { target: { value: 'wronguser' } });
    fireEvent.change(passwordInput, { target: { value: 'wrongpass' } });
    fireEvent.click(signInButton);

    await waitFor(() => expect(mockOnLoginError).toHaveBeenCalled());
  });
});
