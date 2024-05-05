import { useEffect } from "react";
import UpcomingRalliesBar from "../../components/upcomingRalliesBar";
import "./index.scss"

function Home(){
  useEffect(() => {
      document.title = 'RallySphere - Homepage';
  }, []);

  return (
    <>
        <UpcomingRalliesBar/>
    </>
  );
};

export default Home;