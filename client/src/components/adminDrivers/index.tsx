import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface Driver {
  id: number;
  firstName: string;
  lastName: string;
  country: string;
  team: string;
  points: number;
}

const AdminDrivers: React.FC = () => {
  const [drivers, setDrivers] = useState<Driver[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const [newDriver, setNewDriver] = useState({
    firstName: '',
    lastName: '',
    country: '',
    team: '',
    points: 0,
  });
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [isAdding, setIsAdding] = useState<boolean>(false);
  const [editingDriver, setEditingDriver] = useState<Driver | null>(null);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    if (e.target.type === 'number') {
      setNewDriver({ ...newDriver, [name]: Number(value) });
    } else {
      setNewDriver({ ...newDriver, [name]: value });
    }
  };

  const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    if (editingDriver && e.target.type === 'number') {
      setEditingDriver({ ...editingDriver, [name]: Number(value) });
    } else if (editingDriver) {
      setEditingDriver({ ...editingDriver, [name]: value });
    }
  };

  const sortArrayDescending = (array: any[], property: string | number) => {
    return array.sort((a, b) => b[property] - a[property]);
  };

  const addDriver = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:3000/wrcDrivers', newDriver);
      const addedDriver = response.data;
      setDrivers(prevDrivers => sortArrayDescending([...prevDrivers, addedDriver], 'points'));
      setNewDriver({
        firstName: '',
        lastName: '',
        country: '',
        team: '',
        points: 0,
      });
      setIsAdding(false);
    } catch (error) {
      setError('Error adding new driver');
    }
    setLoading(false);
  };

  const updateDriver = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!editingDriver) return;
    setLoading(true);
    try {
      const response = await axios.put(`http://localhost:3000/wrcDrivers/${editingDriver.id}`, editingDriver);
      const updatedDriver = response.data;
      setDrivers(prevDrivers => sortArrayDescending(prevDrivers.map(driver => driver.id === updatedDriver.id ? updatedDriver : driver), 'points'));
      setIsEditing(false);
      setEditingDriver(null);
    } catch (error) {
      setError('Error updating driver');
    }
    setLoading(false);
  };

  const deleteDriver = async (id: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/wrcDrivers/${id}`);
      setDrivers(prevDrivers => prevDrivers.filter(driver => driver.id !== id));
    } catch (error) {
      setError('Error deleting driver');
    }
    setLoading(false);
  };

  useEffect(() => {
    const fetchDrivers = async () => {
      setLoading(true);
      try {
        const response = await axios.get('http://localhost:3000/wrcDrivers');
        if (Array.isArray(response.data)) {
          setDrivers(response.data);
        } else {
          setError('Fetched data is not an array');
        }
      } catch (error) {
        setError('Error fetching drivers');
      }
      setLoading(false);
    };

    fetchDrivers();
  }, []);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add a new Driver</button>
      {isAdding && (
        <Modal title="Add Driver" onClose={() => setIsAdding(false)}>
          <form onSubmit={addDriver} className='addForm'>
            <input type="text" name="firstName" placeholder="First Name" value={newDriver.firstName} onChange={handleInputChange} />
            <input type="text" name="lastName" placeholder="Last Name" value={newDriver.lastName} onChange={handleInputChange} />
            <input type="text" name="country" placeholder="Country" value={newDriver.country} onChange={handleInputChange} />
            <input type="text" name="team" placeholder="Team" value={newDriver.team} onChange={handleInputChange} />
            <input type="number" name="points" placeholder="Points" value={newDriver.points} onChange={handleInputChange} />
            <button type="submit">Add Driver</button>
          </form>
        </Modal>
      )}
      <h1>WRC Drivers</h1>
      <table className='adminTableDrivers'>
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
          {drivers.map((driver) => (
            <tr key={driver.id}>
              <td>{driver.id}</td>
              <td>{driver.firstName}</td>
              <td>{driver.lastName}</td>
              <td>{driver.country}</td>
              <td>{driver.team}</td>
              <td>{driver.points}</td>
              <td><button onClick={() => { setEditingDriver(driver); setIsEditing(true); }} className='editBtn'>Edit</button></td>
              <td><button onClick={() => deleteDriver(driver.id)} className='deleteBtn'>Delete</button></td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingDriver && (
        <Modal title="Edit Driver" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateDriver} className='editForm'>
            <input type="text" name="firstName" placeholder="First Name" value={editingDriver.firstName} onChange={handleEditInputChange} />
            <input type="text" name="lastName" placeholder="Last Name" value={editingDriver.lastName} onChange={handleEditInputChange} />
            <input type="text" name="country" placeholder="Country" value={editingDriver.country} onChange={handleEditInputChange} />
            <input type="text" name="team" placeholder="Team" value={editingDriver.team} onChange={handleEditInputChange} />
            <input type="number" name="points" placeholder="Points" value={editingDriver.points} onChange={handleEditInputChange} />
            <button type="submit">Update Driver</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminDrivers;
