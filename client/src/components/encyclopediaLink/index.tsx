import { Link } from "react-router-dom";
import "./index.scss"

function EncyclopediaLink(){
    return (
        <section>
            <Link to='/groups'>
                <div>
                    <img src="https://upload.wikimedia.org/wikipedia/commons/c/cc/2020_Rally_Bohemia_Legend_-_Ulip_-_Audi_Sport_Quattro_S1_E2.jpg"/>
                    <p>Car Encyclopedia</p>
                </div>
            </Link>
        </section>
    );
};

export default EncyclopediaLink;