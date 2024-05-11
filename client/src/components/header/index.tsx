import { Link } from "react-router-dom";
import NavBar from "../navbar";
import "./index.scss"

function Header(){
    var imageBasePath = window.location.protocol + "//" + window.location.host + "/";

    return (
        <header>
            <Link to="/"><img src={imageBasePath + "/logos/rallysphere-high-resolution-logo-transparent.png"}/></Link>
            <NavBar/>
        </header>
    );
};

export default Header;