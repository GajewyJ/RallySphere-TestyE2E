import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface Team {
  id: number;
  name: string;
  basedIn: string;
  establishment: number;
  principal: string;
  category: string;
  brand: string;
  points: number;
}

const AdminTeams: React.FC = () => {
    const [teams, setTeams] = useState<Team[]>([]);
    const [loading, setLoading] = useState<boolean>(true);
    const [error, setError] = useState<string | null>(null);
    const [newTeam, setNewTeam] = useState({
      name: '',
      basedIn: '',
      establishment: 0,
      principal: '',
      category: '',
      brand: '',
      points: 0,
    });
    const [isEditing, setIsEditing] = useState<boolean>(false);
    const [isAdding, setIsAdding] = useState<boolean>(false);
    const [editingTeam, setEditingTeam] = useState<Team | null>(null);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    if (e.target.type === 'number') {
      setNewTeam({ ...newTeam, [name]: Number(value) });
    } else {
      setNewTeam({ ...newTeam, [name]: value });
    }
  };

  const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    if (editingTeam && e.target.type === 'number') {
      setEditingTeam({ ...editingTeam, [name]: Number(value) });
    } else if (editingTeam) {
      setEditingTeam({ ...editingTeam, [name]: value });
    }
  };

  const sortArrayDescending = (array: any[], property: string | number) => {
    return array.sort((a, b) => b[property] - a[property]);
  };
  

  const addTeam = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:3000/wrcTeams', newTeam);
      const addedTeam = response.data;
      setTeams(prevTeams => sortArrayDescending([...prevTeams, addedTeam], 'points'));
      setNewTeam({
        name: '',
        basedIn: '',
        establishment: 0,
        principal: '',
        category: '',
        brand: '',
        points: 0,
      });
      setIsAdding(false);
    } catch (error) {
      setError('Error adding new team');
    }
    setLoading(false);
  };

  const updateTeam = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!editingTeam) return;
    setLoading(true);
    try {
      const response = await axios.put(`http://localhost:3000/wrcTeams/${editingTeam.id}`, editingTeam);
      const updatedTeam = response.data;
      setTeams(prevTeams => sortArrayDescending(prevTeams.map(team => team.id === updatedTeam.id ? updatedTeam : team), 'points'));
      setIsEditing(false);
      setEditingTeam(null);
    } catch (error) {
      setError('Error updating team');
    }
    setLoading(false);
  };

  const deleteTeam = async (id: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/wrcTeams/${id}`);
      setTeams(prevTeams => prevTeams.filter(team => team.id !== id));
    } catch (error) {
      setError('Error deleting team');
    }
    setLoading(false);
  };

  useEffect(() => {
    fetchTeams();
  }, []);
  
  const fetchTeams = async () => {
    setLoading(true);
    try {
      const response = await axios.get('http://localhost:3000/wrcTeams');
      if (Array.isArray(response.data)) {
        setTeams(response.data);
      } else {
        setError('Fetched data is not an array');
      }
    } catch (error) {
      setError('Error fetching teams');
    }
    setLoading(false);
  };

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add a new Team</button>
      {isAdding && (
        <Modal title="Add Team" onClose={() => setIsAdding(false)}>
          <form onSubmit={addTeam} className='addForm'>
            <input type="text" name="name" placeholder="Name" value={newTeam.name} onChange={handleInputChange} />
            <input type="text" name="basedIn" placeholder="Based In" value={newTeam.basedIn} onChange={handleInputChange} />
            <input type="number" name="establishment" placeholder="Establishment Year" value={newTeam.establishment} onChange={handleInputChange} />
            <input type="text" name="principal" placeholder="Principal" value={newTeam.principal} onChange={handleInputChange} />
            <input type="text" name="category" placeholder="Category" value={newTeam.category} onChange={handleInputChange} />
            <input type="text" name="brand" placeholder="Brand" value={newTeam.brand} onChange={handleInputChange} />
            <input type="number" name="points" placeholder="Points" value={newTeam.points} onChange={handleInputChange} />
            <button type="submit">Add Team</button>
          </form>
        </Modal>
      )}
      <h1>WRC Teams</h1>
      <table className='adminTableTeams'>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Based In</th>
            <th>Establishment</th>
            <th>Principal</th>
            <th>Category</th>
            <th>Brand</th>
            <th>Points</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {teams.map((team) => (
            <tr key={team.id}>
              <td>{team.id}</td>
              <td>{team.name}</td>
              <td>{team.basedIn}</td>
              <td>{team.establishment}</td>
              <td>{team.principal}</td>
              <td>{team.category}</td>
              <td>{team.brand}</td>
              <td>{team.points}</td>
              <td><button onClick={() => { setEditingTeam(team); setIsEditing(true); }} className='editBtn'>Edit</button></td>
              <td><button onClick={() => deleteTeam(team.id)} className='deleteBtn'>Delete</button></td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingTeam && (
        <Modal title="Edit Team" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateTeam} className='editForm'>
            <input type="text" name="name" placeholder="Name" value={editingTeam.name} onChange={handleEditInputChange} />
            <input type="text" name="basedIn" placeholder="Based In" value={editingTeam.basedIn} onChange={handleEditInputChange} />
            <input type="number" name="establishment" placeholder="Establishment Year" value={editingTeam.establishment} onChange={handleEditInputChange} />
            <input type="text" name="principal" placeholder="Principal" value={editingTeam.principal} onChange={handleEditInputChange} />
            <input type="text" name="category" placeholder="Category" value={editingTeam.category} onChange={handleEditInputChange} />
            <input type="text" name="brand" placeholder="Brand" value={editingTeam.brand} onChange={handleEditInputChange} />
            <input type="number" name="points" placeholder="Points" value={editingTeam.points} onChange={handleEditInputChange} />
            <button type="submit">Update Team</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminTeams;
