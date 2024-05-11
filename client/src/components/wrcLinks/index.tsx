import { Link } from "react-router-dom";
import Heading from "../heading";

import "./index.scss"

function WRCLinks(){
  return (
    <div className="WRCLinksDiv1">
      <div>
        <Heading level={1}>Useful WRC Information</Heading>
        <div>
          <Link to="/wrc/news">WRC News</Link>
          <Link to="/wrc/calendar">Calendar</Link>
          <Link to="/">Driver Standings</Link>
          <Link to="/">Co-Driver Standings</Link>
          <Link to="/">Team Standings</Link>
          <a href="https://www.rally.tv/" target="_blank">Watch</a>
        </div>
      </div>
    </div>
  );
};

export default WRCLinks;
