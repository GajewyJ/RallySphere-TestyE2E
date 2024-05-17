import { Link } from "react-router-dom";

import "./index.scss"

function WRCLinks(){
  return (
    <div className="WRCLinksDiv1">
      <div>
        <div>
          <div>
            <Link to="/wrc/news">
              <img src="/links-images/fab98f94-969a-4ffe-a7b3-ea2b263503c5_170524msfourmaux1.jpg"/>
              <p>WRC News</p>
            </Link>
          </div>
          <div>
            <Link to="/wrc/calendar">
              <img src="/links-images/8c4708dd-02da-4a4b-a4f4-fed8729cb0e1_140524rbfafe1.jpg"/>
              <p>Calendar</p>
            </Link>
          </div>
          <div>
            <Link to="/wrc/drivers">
              <img src="/links-images/7d59ea8d-baf5-49c2-927b-76fa6f252a6a_150524tgr-ogier1.jpg"/>
              <p>Driver Standings</p>
            </Link>
          </div>
          <div>
            <Link to="/wrc/coDrivers">
              <img src="/links-images/90f716e8-f3c0-4135-bbec-4e531ecfaf33_120524atogiersun-1.jpg"/>
              <p>Co-Driver Standings</p>
            </Link>
          </div>
          <div>
            <Link to="/wrc/teams">
              <img src="/links-images/faf7b01c-f6ed-43cb-a761-8fbd44fa798f_160524rbmunster.jpg"/>
              <p>Team Standings</p>
            </Link>
          </div>
          <div>
            <Link to="https://www.rally.tv/" target="_blank">
              <img src="/links-images/93a6481d-65e3-4dbd-9a6f-c2e55009ee07_150524hmsgtmwhts.jpg"/>
              <p>Watch</p>
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default WRCLinks;
