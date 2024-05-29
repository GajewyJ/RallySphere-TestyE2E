import '@testing-library/jest-dom';
import { render, fireEvent } from '@testing-library/react';
import AdminLogin from './index';

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
});
