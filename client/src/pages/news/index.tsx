import { useEffect } from "react";
import AllNews from "../../components/allNews";

function News(){
  useEffect(() => {
      document.title = 'RallySphere - WRC Calendar';
  }, []);

  return (
    <>
      <AllNews/>
    </>
  );
};

export default News;