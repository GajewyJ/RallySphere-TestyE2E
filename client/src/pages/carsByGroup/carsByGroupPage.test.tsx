import { render, screen } from '@testing-library/react';
import CarsByGroupPage from './index';
import '@testing-library/jest-dom'

jest.mock('../../components/carsByGroup', () => () => <div>CarsByGroup component</div>);

describe('CarsByGroupPage', () => {
  it('renders CarsByGroup component', () => {
    render(<CarsByGroupPage />);
    expect(screen.getByText('CarsByGroup component')).toBeInTheDocument();
  });
});
