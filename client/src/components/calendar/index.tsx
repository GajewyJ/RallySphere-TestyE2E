import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'
import Heading from '../heading';

interface Rally {
  id: number;
  name: string;
  season: string;
  country: string;
  beginning: Date;
  end: Date;
}

function Calendar(){
  const [rallies, setRallies] = useState<Rally[]>([]);

  useEffect(() => {
      document.title = 'RallySphere - WRC ' + new Date(Date.now()).getFullYear().toString() + ' Calendar';
  }, []);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Rally[]>('http://localhost:3000/wrcrallies');
        setRallies(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  return(
    <main>
      <Heading level={1}>WRC {new Date(Date.now()).getFullYear().toString()} Calendar</Heading>
      <div className='calendarContent'>
        {rallies.map((rally) => {
          const currentYear = new Date().getFullYear();
          if (parseInt(rally.season) === currentYear) {
            return (
              <a key={rally.id}>
                <div>
                  <p>{
                    new Date(rally.end) < new Date() 
                      ? "COMPLETED " 
                      : `${new Date(rally.beginning).toLocaleDateString('pl-PL')} - ${new Date(rally.end).toLocaleDateString('pl-PL')} `
                  }</p>
                  <p>{rally.name}</p>
                  <div>
                    <p> {rally.country}</p>
                    <img src={`/flags/${rally.country.toLowerCase()}.png`}/>
                  </div>
                </div>
              </a>
            )
          }
        })}
      </div>
    </main>
  )
};

export default Calendar;