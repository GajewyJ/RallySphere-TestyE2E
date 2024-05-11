import { Link } from "react-router-dom";
import NavBar from "../navbar";
import "./index.scss"

function Header(){
    return (
        <header>
            <Link to="/"><img src="./././logos/rallysphere-high-resolution-logo-transparent.png"/></Link>
            <NavBar/>
        </header>
    );
};

export default Header;