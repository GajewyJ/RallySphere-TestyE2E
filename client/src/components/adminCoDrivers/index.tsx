import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface CoDriver {
  id: number;
  firstName: string;
  lastName: string;
  country: string;
  team: string;
  points: number;
}

const AdminCoDrivers: React.FC = () => {
  const [coDrivers, setCoDrivers] = useState<CoDriver[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const [newCoDriver, setNewCoDriver] = useState({
    firstName: '',
    lastName: '',
    country: '',
    team: '',
    points: 0,
  });
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [isAdding, setIsAdding] = useState<boolean>(false);
  const [editingCoDriver, setEditingCoDriver] = useState<CoDriver | null>(null);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setNewCoDriver({ ...newCoDriver, [name]: e.target.type === 'number' ? Number(value) : value });
  };

  const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    if (editingCoDriver) {
      setEditingCoDriver({ ...editingCoDriver, [name]: e.target.type === 'number' ? Number(value) : value });
    }
  };

  const sortArrayDescending = (array: CoDriver[]) => {
    return array.sort((a, b) => b.points - a.points);
  };

  const addCoDriver = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:3000/wrcCoDrivers', newCoDriver);
      const addedCoDriver = response.data;
      setCoDrivers(sortArrayDescending([...coDrivers, addedCoDriver]));
      setNewCoDriver({
        firstName: '',
        lastName: '',
        country: '',
        team: '',
        points: 0,
      });
      setIsAdding(false);
    } catch (error) {
      setError('Error adding new co-driver');
    }
    setLoading(false);
  };

  const updateCoDriver = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!editingCoDriver) return;
    setLoading(true);
    try {
      const response = await axios.put(`http://localhost:3000/wrcCoDrivers/${editingCoDriver.id}`, editingCoDriver);
      const updatedCoDriver = response.data;
      setCoDrivers(sortArrayDescending(coDrivers.map(coDriver => coDriver.id === updatedCoDriver.id ? updatedCoDriver : coDriver)));
      setIsEditing(false);
      setEditingCoDriver(null);
    } catch (error) {
      setError('Error updating co-driver');
    }
    setLoading(false);
  };

  const deleteCoDriver = async (id: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/wrcCoDrivers/${id}`);
      setCoDrivers(coDrivers.filter(coDriver => coDriver.id !== id));
    } catch (error) {
      setError('Error deleting co-driver');
    }
    setLoading(false);
  };

  useEffect(() => {
    const fetchCoDrivers = async () => {
      setLoading(true);
      try {
        const response = await axios.get('http://localhost:3000/wrcCoDrivers');
        setCoDrivers(sortArrayDescending(response.data));
      } catch (error) {
        setError('Error fetching co-drivers');
      }
      setLoading(false);
    };

    fetchCoDrivers();
  }, []);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add a new Co-Driver</button>
      {isAdding && (
        <Modal title="Add Co-Driver" onClose={() => setIsAdding(false)}>
          <form onSubmit={addCoDriver} className='addForm'>
            <input type="text" name="firstName" placeholder="First Name" value={newCoDriver.firstName} onChange={handleInputChange} required />
            <input type="text" name="lastName" placeholder="Last Name" value={newCoDriver.lastName} onChange={handleInputChange} required />
            <input type="text" name="country" placeholder="Country" value={newCoDriver.country} onChange={handleInputChange} required />
            <input type="text" name="team" placeholder="Team" value={newCoDriver.team} onChange={handleInputChange} required />
            <input type="number" name="points" placeholder="Points" value={newCoDriver.points} onChange={handleInputChange} required />
            <button type="submit">Add Co-Driver</button>
          </form>
        </Modal>
      )}
      <h1>WRC Co-Drivers</h1>
      <table className='adminTableCoDrivers'>
        <thead>
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Country</th>
            <th>Team</th>
            <th>Points</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {coDrivers.map((coDriver) => (
            <tr key={coDriver.id}>
              <td>{coDriver.id}</td>
              <td>{coDriver.firstName}</td>
              <td>{coDriver.lastName}</td>
              <td>{coDriver.country}</td>
              <td>{coDriver.team}</td>
              <td>{coDriver.points}</td>
              <td>
                <button onClick={() => { setEditingCoDriver(coDriver); setIsEditing(true); }} className='editBtn'>Edit</button>
              </td>
              <td>
                <button onClick={() => deleteCoDriver(coDriver.id)} className='deleteBtn'>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingCoDriver && (
        <Modal title="Edit Co-Driver" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateCoDriver} className='editForm'>
            <input type="text" name="firstName" placeholder="First Name" value={editingCoDriver.firstName} onChange={handleEditInputChange} required />
            <input type="text" name="lastName" placeholder="Last Name" value={editingCoDriver.lastName} onChange={handleEditInputChange} required />
            <input type="text" name="country" placeholder="Country" value={editingCoDriver.country} onChange={handleEditInputChange} required />
            <input type="text" name="team" placeholder="Team" value={editingCoDriver.team} onChange={handleEditInputChange} required />
            <input type="number" name="points" placeholder="Points" value={editingCoDriver.points} onChange={handleEditInputChange} required />
            <button type="submit">Update Co-Driver</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminCoDrivers;
