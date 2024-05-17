import { useEffect } from "react";  
import DriverStandings from "../../components/driverStandings";

function Drivers(){
  useEffect(() => {
      document.title = 'RallySphere - WRC Driver Standings';
  }, []);

  return (
    <>
      <DriverStandings/>
    </>
  );
};

export default Drivers;