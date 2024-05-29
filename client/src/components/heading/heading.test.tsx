import { render, screen } from '@testing-library/react';
import Heading from '.';
import '@testing-library/jest-dom';

describe('Heading', () => {
  it('renders the correct heading level', () => {
    render(<Heading level={1}>Test Heading</Heading>);
    expect(screen.getByRole('heading', { level: 1 })).toHaveTextContent('Test Heading');

    render(<Heading level={2}>Test Heading</Heading>);
    expect(screen.getByRole('heading', { level: 2 })).toHaveTextContent('Test Heading');

    render(<Heading level={3}>Test Heading</Heading>);
    expect(screen.getByRole('heading', { level: 3 })).toHaveTextContent('Test Heading');

    render(<Heading level={4}>Test Heading</Heading>);
    expect(screen.getByRole('heading', { level: 4 })).toHaveTextContent('Test Heading');

    render(<Heading level={5}>Test Heading</Heading>);
    expect(screen.getByRole('heading', { level: 5 })).toHaveTextContent('Test Heading');

    render(<Heading level={6}>Test Heading</Heading>);
    expect(screen.getByRole('heading', { level: 6 })).toHaveTextContent('Test Heading');
  });

  it('renders a paragraph for level 0', () => {
    render(<Heading level={0}>Test Heading</Heading>);
    expect(screen.getByText('Test Heading').tagName).toBe('P');
  });
  
  it('renders a paragraph for level 7', () => {
    render(<Heading level={7}>Test Heading</Heading>);
    expect(screen.getByText('Test Heading').tagName).toBe('P');
  });
  
});
