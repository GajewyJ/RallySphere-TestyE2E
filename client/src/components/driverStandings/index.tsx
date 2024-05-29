import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'

interface Driver {
  id: number;
  firstName: string;
  lastName: string;
  country: string;
  team: string;
  points: number;
}

function DriverStandings(){
  const [drivers, setDrivers] = useState<Driver[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Driver[]>('http://localhost:3000/wrcDrivers');
        setDrivers(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  let i = 0;

  if(drivers.length > 0){
    return(
      <main>
        <h1>Driver Standings</h1>
        <table className='driversContent'>
          <tbody>
            <tr>
              <td>Position</td>
              <td>Driver</td>
              <td className='dissapearCollumn'>Country</td>
              <td>Team</td>
              <td>Points</td>
            </tr>
            {drivers.map((driver) => {
              i = i + 1
              return (
                <tr key={driver.id}>
                  <td>{i}</td>
                  <td>{driver.firstName} {driver.lastName}</td>
                  <td className='dissapearCollumn'>{driver.country}</td>
                  <td>{driver.team}</td>
                  <td>{driver.points}</td>
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
        <h1>Driver Standings</h1>
        <h3>No drivers found</h3>
      </main>
    )
  }
};

export default DriverStandings;
