import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface Rally {
  id: number;
  name: string;
  season: number;
  country: string;
  beginning: string;
  end: string;
}

const AdminRallies: React.FC = () => {
  const [rallies, setRallies] = useState<Rally[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const [newRally, setNewRally] = useState({
    name: '',
    season: 0,
    country: '',
    beginning: '',
    end: '',
  });
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [isAdding, setIsAdding] = useState<boolean>(false);
  const [editingRally, setEditingRally] = useState<Rally | null>(null);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setNewRally({ ...newRally, [name]: name === 'season' ? Number(value) : value });
  };

  const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    if (editingRally) {
      setEditingRally({ ...editingRally, [name]: name === 'season' ? Number(value) : value });
    }
  };

  const addRally = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:3000/wrcRallies', newRally);
      const addedRally = response.data;
      setRallies([...rallies, addedRally]);
      setNewRally({
        name: '',
        season: 0,
        country: '',
        beginning: '',
        end: '',
      });
      setIsAdding(false);
    } catch (error) {
      setError('Error adding new rally');
    }
    setLoading(false);
  };

  const updateRally = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!editingRally) return;
    setLoading(true);
    try {
      const response = await axios.put(`http://localhost:3000/wrcRallies/${editingRally.id}`, editingRally);
      const updatedRally = response.data;
      setRallies(rallies.map(rally => rally.id === updatedRally.id ? updatedRally : rally));
      setIsEditing(false);
      setEditingRally(null);
    } catch (error) {
      setError('Error updating rally');
    }
    setLoading(false);
  };

  const deleteRally = async (id: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/wrcRallies/${id}`);
      setRallies(rallies.filter(rally => rally.id !== id));
    } catch (error) {
      setError('Error deleting rally');
    }
    setLoading(false);
  };

  useEffect(() => {
    const fetchRallies = async () => {
      setLoading(true);
      try {
        const response = await axios.get('http://localhost:3000/wrcRallies');
        setRallies(response.data);
      } catch (error) {
        setError('Error fetching rallies');
      }
      setLoading(false);
    };

    fetchRallies();
  }, []);

  function formatDate(dateString: string) {
    const date = new Date(dateString);
    const day = String(date.getUTCDate()).padStart(2, '0');
    const month = String(date.getUTCMonth() + 1).padStart(2, '0');
    const year = date.getUTCFullYear();

    return `${day}-${month}-${year}`;
  }

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add a new Rally</button>
      {isAdding && (
        <Modal title="Add Rally" onClose={() => setIsAdding(false)}>
          <form onSubmit={addRally} className='addForm'>
            <input type="text" name="name" placeholder="Name" value={newRally.name} onChange={handleInputChange} required />
            <input type="number" name="season" placeholder="Season" value={newRally.season} onChange={handleInputChange} required />
            <input type="text" name="country" placeholder="Country" value={newRally.country} onChange={handleInputChange} required />
            <input type="date" name="beginning" placeholder="Beginning" value={newRally.beginning} onChange={handleInputChange} required />
            <input type="date" name="end" placeholder="End" value={newRally.end} onChange={handleInputChange} required />
            <button type="submit">Add Rally</button>
          </form>
        </Modal>
      )}
      <h1>WRC Rallies</h1>
      <table className='adminTableCoDrivers'>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Season</th>
            <th>Country</th>
            <th>Beginning</th>
            <th>End</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {rallies.map((rally) => (
            <tr key={rally.id}>
              <td>{rally.id}</td>
              <td>{rally.name}</td>
              <td>{rally.season}</td>
              <td>{rally.country}</td>
              <td>{formatDate(rally.beginning)}</td>
              <td>{formatDate(rally.end)}</td>
              <td>
                <button onClick={() => { setEditingRally(rally); setIsEditing(true); }} className='editBtn'>Edit</button>
              </td>
              <td>
                <button onClick={() => deleteRally(rally.id)} className='deleteBtn'>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingRally && (
        <Modal title="Edit Rally" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateRally} className='editForm'>
            <input type="text" name="name" placeholder="Name" value={editingRally.name} onChange={handleEditInputChange} required />
            <input type="number" name="season" placeholder="Season" value={editingRally.season} onChange={handleEditInputChange} required />
            <input type="text" name="country" placeholder="Country" value={editingRally.country} onChange={handleEditInputChange} required />
            <input type="date" name="beginning" placeholder="Beginning" value={editingRally.beginning} onChange={handleEditInputChange} required />
            <input type="date" name="end" placeholder="End" value={editingRally.end} onChange={handleEditInputChange} required />
            <button type="submit">Update Rally</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminRallies;
