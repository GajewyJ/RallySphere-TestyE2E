import { render, screen, fireEvent } from '@testing-library/react';
import { BrowserRouter as Router } from 'react-router-dom';
import Header from './index.tsx';
import '@testing-library/jest-dom';

describe('Header', () => {
  it('renders the logo', () => {
    render(
      <Router>
        <Header />
      </Router>
    );

    const logo = screen.getByRole('img');
    expect(logo).toBeInTheDocument();
    expect(logo.getAttribute('src')).toContain('rallysphere-high-resolution-logo-transparent.png');
  });

  it('renders the NavBar with correct initial state', () => {
    render(
      <Router>
        <Header />
      </Router>
    );
  
    expect(screen.getByText('MENU')).toBeInTheDocument();
    expect(screen.getByText('Home').closest('div')).not.toHaveClass('expanded');
    expect(screen.getByText(`WRC ${new Date(Date.now()).getFullYear()}`).closest('div')).not.toHaveClass('expanded');
    expect(screen.getByText('Car Encyclopedia').closest('div')).not.toHaveClass('expanded');
  });
  
  it('expands and collapses the NavBar when menu icon is clicked', () => {
    render(
      <Router>
        <Header />
      </Router>
    );
  
    const menuIcon = screen.getByText('MENU');
    fireEvent.click(menuIcon);
  
    expect(screen.getByText('HIDE')).toBeInTheDocument();
    expect(screen.getByText('Home').closest('div')).toHaveClass('expanded');
    expect(screen.getByText(`WRC ${new Date(Date.now()).getFullYear()}`).closest('div')).toHaveClass('expanded');
    expect(screen.getByText('Car Encyclopedia').closest('div')).toHaveClass('expanded');
  
    fireEvent.click(menuIcon);
  
    expect(screen.getByText('MENU')).toBeInTheDocument();
    expect(screen.getByText('Home').closest('div')).not.toHaveClass('expanded');
    expect(screen.getByText(`WRC ${new Date(Date.now()).getFullYear()}`).closest('div')).not.toHaveClass('expanded');
    expect(screen.getByText('Car Encyclopedia').closest('div')).not.toHaveClass('expanded');
  });
});