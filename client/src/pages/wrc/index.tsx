import { useEffect } from "react";
import UpcomingRalliesBar from "../../components/upcomingRalliesBar";
import "./index.scss"

function WRC(){
  let date = new Date(Date.now())
  let year = date.getFullYear()
  useEffect(() => {
      document.title = 'RallySphere - WRC ' + year;
  }, []);
  return (
    <>
      <UpcomingRalliesBar/>
    </>
  );
};

export default WRC;