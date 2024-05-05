import { Link } from 'react-router-dom';
import './index.scss'

function NavBar(){
  return(
    <nav>
      <Link to='/'>Home</Link>
      <Link to='/wrc'>WRC {new Date(Date.now()).getFullYear()}</Link>
    </nav>
  )
};

export default NavBar;