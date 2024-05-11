import { useEffect } from "react";
import UpcomingRalliesBar from "../../components/upcomingRalliesBar";
import "./index.scss"
import LatestNewsBar from "../../components/latestNewsBar";
import WRCLinksBar from "../../components/wrcLinksBar";

function Home(){
  useEffect(() => {
      document.title = 'RallySphere - Homepage';
  }, []);

  return (
    <>
        <UpcomingRalliesBar/>
        <LatestNewsBar/>
        <WRCLinksBar/>
    </>
  );
};

export default Home;