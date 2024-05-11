import { useEffect } from "react";  
import Calendar from "../../components/calendar";

function CalendarPage(){
  useEffect(() => {
      document.title = 'RallySphere - WRC Calendar';
  }, []);

  return (
    <>
      <Calendar/>
    </>
  );
};

export default CalendarPage;