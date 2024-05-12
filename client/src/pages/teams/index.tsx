import { useEffect } from "react";  
import TeamStandings from "../../components/teamStandings";

function Teams(){
  useEffect(() => {
      document.title = 'RallySphere - WRC Team Standings';
  }, []);

  return (
    <>
      <TeamStandings/>
    </>
  );
};

export default Teams;