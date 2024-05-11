import { useEffect } from "react";
import UpcomingRalliesBar from "../../components/upcomingRalliesBar";
import "./index.scss"
import Calendar from "../../components/calendar";

function WRC(){
  let date = new Date(Date.now())
  let year = date.getFullYear()
  useEffect(() => {
      document.title = 'RallySphere - WRC ' + year;
  }, []);
  return (
    <>
      <UpcomingRalliesBar/>
      <Calendar/>
    </>
  );
};

export default WRC;