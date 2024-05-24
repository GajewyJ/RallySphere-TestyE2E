import { Link } from 'react-router-dom';
import { useState } from 'react';
import './index.scss';

function NavBar() {
  const [isNavExpanded, setIsNavExpanded] = useState(false);

  return (
    <nav>
      <div className="menu-icon" onClick={() => setIsNavExpanded(!isNavExpanded)}>{isNavExpanded ? 'HIDE' : 'MENU'}</div>
      <div className={`links ${isNavExpanded ? 'expanded' : ''}`}>
        <Link to='/'>Home</Link>
        <Link to='/wrc'>{"WRC " + new Date(Date.now()).getFullYear()}</Link>
        <Link to='/groups'>Car Encyclopedia</Link>
      </div>
    </nav>
  );
}

export default NavBar;
