import { useEffect } from "react";
import "./index.scss"
import LatestNewsBar from "../../components/latestNewsBar";
import WRCLinksBar from "../../components/wrcLinksBar";

function Home(){
  useEffect(() => {
      document.title = 'RallySphere - Homepage';
  }, []);

  return (
    <>
        <LatestNewsBar/>
        <WRCLinksBar/>
    </>
  );
};

export default Home;