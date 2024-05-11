import { useEffect } from "react";
import "./index.scss"
import WRCLinks from "../../components/wrcLinks";

function WRC(){
  let date = new Date(Date.now())
  let year = date.getFullYear()
  useEffect(() => {
      document.title = 'RallySphere - WRC ' + year;
  }, []);
  return (
    <>
      <WRCLinks/>
    </>
  );
};

export default WRC;