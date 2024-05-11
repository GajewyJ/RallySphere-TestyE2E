import Heading from "../heading";

import "./index.scss"

function WRCLinksBar(){
  return (
    <div className="WRCLinksDiv">
      <div>
        <Heading level={1}>WRC Standings</Heading>
        <a>Drivers</a>
        <a>Co-Drivers</a>
        <a>Teams</a>
      </div>
    </div>
  );
};

export default WRCLinksBar;
