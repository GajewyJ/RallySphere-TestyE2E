import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'

interface CoDriver {
  id: number;
  firstName: string;
  lastName: string;
  country: string;
  team: string;
  points: number;
}

function CoDriverStandings(){
  const [coDrivers, setDrivers] = useState<CoDriver[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<CoDriver[]>('http://localhost:3000/wrcCoDrivers');
        setDrivers(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  let i = 0;

  if(coDrivers.length > 0){
    return(
      <main>
        <h1>Co-Driver Standings</h1>
        <table className='driversContent'>
          <tbody>
            <tr>
              <td>Position</td>
              <td>Co-Driver</td>
              <td className='dissapearCollumn'>Country</td>
              <td>Team</td>
              <td>Points</td>
            </tr>
            {coDrivers.map((coDriver) => {
              i = i + 1
              return (
                <tr key={coDriver.id}>
                  <td>{i}</td>
                  <td>{coDriver.firstName} {coDriver.lastName}</td>
                  <td className='dissapearCollumn'>{coDriver.country}</td>
                  <td>{coDriver.team}</td>
                  <td>{coDriver.points}</td>
                </tr>
              )
            })}
          </tbody>
        </table>
      </main>
    )
  }
  else{
    return(
      <main>
        <h1>Co-Driver Standings</h1>
        <h3>No co-drivers found</h3>
      </main>
    )

  }
};

export default CoDriverStandings;
