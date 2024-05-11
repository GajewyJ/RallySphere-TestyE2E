import { useEffect } from "react";
import UpcomingRalliesBar from "../../components/upcomingRalliesBar";
import "./index.scss"
import LatestNewsBar from "../../components/latestNewsBar";

function Home(){
  useEffect(() => {
      document.title = 'RallySphere - Homepage';
  }, []);

  return (
    <>
        <UpcomingRalliesBar/>
        <LatestNewsBar/>
    </>
  );
};

export default Home;