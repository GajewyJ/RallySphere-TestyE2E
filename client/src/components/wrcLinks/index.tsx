import Heading from "../heading";

import "./index.scss"

function WRCLinks(){
  return (
    <div className="WRCLinksDiv1">
      <div>
        <Heading level={1}>Useful WRC Information</Heading>
        <div>
          <a>WRC News</a>
          <a>Calendar</a>
          <a>Driver Standings</a>
          <a>Co-Driver Standings</a>
          <a>Team Standings</a>
          <a href="https://www.rally.tv/" target="_blank">Watch</a>
        </div>
      </div>
    </div>
  );
};

export default WRCLinks;
