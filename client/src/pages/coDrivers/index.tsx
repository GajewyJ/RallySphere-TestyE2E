import { useEffect } from "react";  
import CoDriverStandings from "../../components/coDriverStandings";

function CoDrivers(){
  useEffect(() => {
      document.title = 'RallySphere - WRC Co-Driver Standings';
  }, []);

  return (
    <>
      <CoDriverStandings/>
    </>
  );
};

export default CoDrivers;