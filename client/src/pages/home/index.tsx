import { useEffect } from "react";
import "./index.scss"
import LatestNewsBar from "../../components/latestNewsBar";
import WRCLinksBar from "../../components/wrcLinksBar";
import EncyclopediaLink from "../../components/encyclopediaLink";

function Home(){
  useEffect(() => {
      document.title = 'RallySphere - Homepage';
  }, []);

  return (
    <>
        <LatestNewsBar/>
        <WRCLinksBar/>
        <EncyclopediaLink/>
    </>
  );
};

export default Home;