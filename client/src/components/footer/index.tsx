import Heading from "../heading";
import "./index.scss"

function Footer(){
    return (
        <footer>
            <div>
                <Heading level={3}>©2024 Jakub Gajewy</Heading>
                <p>*Some data may be inaccurate or incomplete</p>
            </div>
        </footer>
    );
};

export default Footer;