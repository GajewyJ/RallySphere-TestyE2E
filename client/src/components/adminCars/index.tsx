import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface Car {
  id: number;
  brand: string;
  model: string;
  description: string;
  photo_url: string;
  photo_html_attribution: string;
  category: number;
  enc_categories: {
    name: string;
  };
}

const AdminCars: React.FC = () => {
  const [cars, setCars] = useState<Car[]>([]);
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);
  const [newCar, setNewCar] = useState({
    brand: '',
    model: '',
    description: '',
    photo_url: '',
    photo_html_attribution: '',
    category: 1
  });
  const [categories, setCategories] = useState<{ id: number; name: string }[]>([]);
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [isAdding, setIsAdding] = useState<boolean>(false);
  const [editingCar, setEditingCar] = useState<Car | null>(null);

  const editCar = (car: Car) => {
    setEditingCar(car);
    setIsEditing(true);
  };

  const updateCar = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (editingCar) {
      setLoading(true);
      try {
        const response = await axios.put(`http://localhost:3000/encCars/${editingCar.id}`, editingCar);
        const updatedCar = response.data;
        setCars(cars.map(car => car.id === updatedCar.id ? { ...car, ...updatedCar, enc_categories: categories.find(cat => cat.id === updatedCar.category) } : car));
        setIsEditing(false);
        setEditingCar(null);
      } catch (error) {
        setError('Error updating car');
        console.error(error);
      }
      setLoading(false);
    }
  };
  

  const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement>) => {
    const { name, value } = e.target;
    setEditingCar(prev => prev ? { ...prev, [name]: value } : null);
  };

  useEffect(() => {
    fetchCars();
    fetchCategories();
  }, []);

  const fetchCategories = async () => {
    try {
      const response = await axios.get('http://localhost:3000/encCategories');
      setCategories(response.data);
    } catch (error) {
      setError('Error fetching categories');
    }
  };

  useEffect(() => {
    fetchCars();
  }, []);

  const fetchCars = async () => {
    setLoading(true);
    try {
      const response = await axios.get('http://localhost:3000/encCars');
      setCars(response.data);
    } catch (error) {
      setError('Error fetching cars');
    }
    setLoading(false);
  };

  const addCar = async (e: any) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:3000/encCars', newCar);
      const newCarWithCategory = {
        ...response.data,
        enc_categories: categories.find(cat => cat.id === newCar.category)
      };
      setCars(prevCars => [...prevCars, newCarWithCategory]);
      setNewCar({
        brand: '',
        model: '',
        description: '',
        photo_url: '',
        photo_html_attribution: '',
        category: 1
      });
      setIsAdding(false);
    } catch (error) {
      setError('Error adding new car');
      console.error(error);
    }
    setLoading(false);
  };

  const deleteCar = async (carId: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/encCars/${carId}`);
      setCars(cars.filter(car => car.id !== carId));
    } catch (error) {
      setError('Error deleting car');
      console.error(error);
    }
    setLoading(false);
  };

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setNewCar({ ...newCar, [e.target.name]: e.target.value });
  };
  
  const handleTextAreaChange = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
    setNewCar({ ...newCar, [e.target.name]: e.target.value });
  };

  const handleCategoryChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
    setNewCar({ ...newCar, category: parseInt(e.target.value) });
  };

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add a new Car</button>
      {isAdding && (
        <Modal title="Add Car" onClose={() => setIsAdding(false)}>
          <form onSubmit={addCar} className='addForm'>
            <input type="text" name="brand" placeholder="Brand" value={newCar.brand} onChange={handleInputChange} />
            <input type="text" name="model" placeholder="Model" value={newCar.model} onChange={handleInputChange} />
            <textarea name="description" placeholder="Description" value={newCar.description} onChange={handleTextAreaChange} />
            <input type="text" name="photo_url" placeholder="Photo URL" value={newCar.photo_url} onChange={handleInputChange} />
            <input type="text" name="photo_html_attribution" placeholder="Photo Attribution" value={newCar.photo_html_attribution} onChange={handleInputChange} />
            <select name="category" value={newCar.category} onChange={handleCategoryChange}>
              {categories.map((category) => (
                <option key={category.id} value={category.id}>
                  {category.name}
                </option>
              ))}
            </select>
            <button type="submit">Add Car</button>
          </form>
        </Modal>
      )}
      <h1>Cars</h1>
      <table className='adminTable'>
        <thead>
          <tr>
            <th>ID</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Description</th>
            <th>Photo URL</th>
            <th>Photo HTML Attribution</th>
            <th>Group</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {cars.map((car) => (
            <tr key={car.id}>
              <td>{car.id}</td>
              <td>{car.brand}</td>
              <td>{car.model}</td>
              <td>{car.description.length > 30 ? (car.description.substring(0, 30).trim() + "...") : (car.description) }</td>
              <td>{car.photo_url.length > 30 ? (car.photo_url.substring(0, 30).trim() + "...") : (car.photo_url) }</td>
              <td>{car.photo_html_attribution.length > 30 ? (car.photo_html_attribution.substring(0, 30).trim() + "...") : (car.photo_html_attribution)}</td>
              <td>{car.enc_categories.name}</td>
              <td>
                <button onClick={() => editCar(car)} className='editBtn'>Edit</button>
              </td>
              <td>
                <button className='deleteBtn' onClick={() => deleteCar(car.id)}>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingCar && (
        <Modal title="Edit Car" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateCar} className='editForm'>
            <input type="text" name="brand" placeholder="Brand" value={editingCar.brand} onChange={handleEditInputChange} />
            <input type="text" name="model" placeholder="Model" value={editingCar.model} onChange={handleEditInputChange} />
            <textarea name="description" placeholder="Description" value={editingCar.description} onChange={handleEditInputChange} />
            <input type="text" name="photo_url" placeholder="Photo URL" value={editingCar.photo_url} onChange={handleEditInputChange} />
            <input type="text" name="photo_html_attribution" placeholder="Photo Attribution" value={editingCar.photo_html_attribution} onChange={handleEditInputChange} />
            <select name="category" value={editingCar.category} onChange={(e) => setEditingCar({ ...editingCar, category: parseInt(e.target.value) })}>
              {categories.map((category) => (
                <option key={category.id} value={category.id}>
                  {category.name}
                </option>
              ))}
            </select>
            <button type="submit">Update Car</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminCars;