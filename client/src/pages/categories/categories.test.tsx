import { render, screen } from '@testing-library/react';
import AllCategoriesPage from './index';
import '@testing-library/jest-dom'

jest.mock('../../components/allCategories', () => () => <div>AllCategories component</div>);

describe('AllCategoriesPage', () => {
  it('renders AllCategories component', () => {
    render(<AllCategoriesPage />);
    expect(screen.getByText('AllCategories component')).toBeInTheDocument();
  });

  it('sets the document title', () => {
    render(<AllCategoriesPage />);
    expect(document.title).toEqual('RallySphere - Car Groups');
  });
});
