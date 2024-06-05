import { render, screen } from '@testing-library/react';
import News from './index';
import '@testing-library/jest-dom'

jest.mock('../../components/allNews', () => () => <div>AllNews component</div>);

describe('News', () => {
  it('renders AllNews component', () => {
    render(<News />);
    expect(screen.getByText('AllNews component')).toBeInTheDocument();
  });

  it('adds correct title to AllNews component', () => {
    render(<News />);
    expect(document.title).toEqual('RallySphere - WRC News');
  });
});
