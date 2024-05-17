import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'

interface Team {
  id: number;
  name: string;
  basedIn: string;
  establishment: Date;
  principal: string;
  category: string;
  brand: string;
  points: number;
}

function TeamStandings(){
  const [teams, setTeams] = useState<Team[]>([]);

  useEffect(() => {
    document.title = 'WRC Teams';
  }, []);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Team[]>('http://localhost:3000/wrcteams');
        setTeams(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  let i = 0;

  return(
    <main>
      <h1>Team Standings</h1>
      <table className='teamsContent'>
        <tbody>
          <tr>
            <td>Position</td>
            <td>Team</td>
            <td>Category</td>
            <td className='dissapearCollumn'>Based In</td>
            <td>Points</td>
          </tr>
          {teams.map((team) => {
            i = i + 1
            return (
              <tr key={team.id}>
                <td>{i}</td>
                <td>{team.name}</td>
                <td>{team.category}</td>
                <td className='dissapearCollumn'>{team.basedIn}</td>
                <td>{team.points}</td>
              </tr>
            )
          })}
        </tbody>
      </table>
    </main>
  )
};

export default TeamStandings;