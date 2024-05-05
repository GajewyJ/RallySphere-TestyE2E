import NavBar from "../navbar";
import "./index.scss"

function Header(){
    return (
        <header>
            <a href="/"><img src="./././logos/rallysphere-high-resolution-logo-transparent.png"/></a>
            <NavBar/>
        </header>
    );
};

export default Header;