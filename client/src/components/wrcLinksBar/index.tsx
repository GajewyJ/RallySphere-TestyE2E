import { Link } from "react-router-dom";
import Heading from "../heading";

import "./index.scss"

function WRCLinksBar(){
  return (
    <div className="WRCLinksDiv">
      <div>
        <Heading level={1}>WRC Standings</Heading>
        <Link to='/wrc/drivers'>Drivers</Link>
        <Link to='/wrc/coDrivers'>Co-Drivers</Link>
        <Link to='/wrc/teams'>Teams</Link>
      </div>
    </div>
  );
};

export default WRCLinksBar;
