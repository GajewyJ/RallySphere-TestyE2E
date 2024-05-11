import { useEffect } from "react";
import "./index.scss"
import Calendar from "../../components/calendar";

function Home(){
  useEffect(() => {
      document.title = 'RallySphere - WRC Calendar';
  }, []);

  return (
    <>
      <Calendar/>
    </>
  );
};

export default Home;