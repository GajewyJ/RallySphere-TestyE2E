import { render, screen } from '@testing-library/react';
import Home from './index';
import '@testing-library/jest-dom'

jest.mock('../../components/latestNewsBar', () => () => <div>LatestNewsBar component</div>);
jest.mock('../../components/wrcLinksBar', () => () => <div>WRCLinksBar component</div>);
jest.mock('../../components/encyclopediaLink', () => () => <div>EncyclopediaLink component</div>);

describe('Home', () => {
  it('renders components correctly', () => {
    render(<Home />);
    expect(screen.getByText('LatestNewsBar component')).toBeInTheDocument();
    expect(screen.getByText('WRCLinksBar component')).toBeInTheDocument();
    expect(screen.getByText('EncyclopediaLink component')).toBeInTheDocument();
  });

  it('correctly sets homepage title', () => {
    render(<Home />);
    expect(document.title).toEqual('RallySphere - Homepage');
  });
});
