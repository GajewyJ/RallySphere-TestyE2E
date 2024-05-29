import '@testing-library/jest-dom';
import { render, fireEvent } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import NavBar from './index';

describe('NavBar', () => {
  it('renders without crashing', () => {
    render(<NavBar />, { wrapper: MemoryRouter });
  });

  it('expands and hides the menu when clicked', () => {
    const { getByText } = render(<NavBar />, { wrapper: MemoryRouter });
    const menuIcon = getByText(/MENU/i);
    
    expect(menuIcon.textContent).toBe('MENU');
    
    fireEvent.click(menuIcon);
    expect(menuIcon.textContent).toBe('HIDE');
    
    fireEvent.click(menuIcon);
    expect(menuIcon.textContent).toBe('MENU');
  });

  it('renders correct links', () => {
    const { getByText } = render(<NavBar />, { wrapper: MemoryRouter });
    expect(getByText('Home')).toBeInTheDocument();
    expect(getByText(`WRC ${new Date(Date.now()).getFullYear()}`)).toBeInTheDocument();
    expect(getByText('Car Encyclopedia')).toBeInTheDocument();
  });
});
