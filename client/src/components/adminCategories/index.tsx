import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface Category {
  id: number;
  name: string;
  years: string;
  description: string;
  chrono: number;
  photo_url: string;
}

const AdminCategories: React.FC = () => {
  const [categories, setCategories] = useState<Category[]>([]);
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);
  const [newCategory, setNewCategory] = useState({
    name: '',
    years: '',
    description: '',
    chrono: 1,
    photo_url: '',
  });
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [isAdding, setIsAdding] = useState<boolean>(false);
  const [editingCategory, setEditingCategory] = useState<Category | null>(null);

  const editCategory = (category: Category) => {
    setEditingCategory(category);
    setIsEditing(true);
  };

  const updateCategory = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (editingCategory) {
      setLoading(true);
      try {
        const response = await axios.put(`http://localhost:3000/encCategories/${editingCategory.id}`, editingCategory);
        const updatedCategory = response.data;
        setCategories(prevCategories => {
          const updatedCategories = prevCategories.map(cat => cat.id === updatedCategory.id ? { ...cat, ...updatedCategory } : cat);
          return updatedCategories.sort((a, b) => a.chrono - b.chrono);
        });
        setIsEditing(false);
        setEditingCategory(null);
      } catch (error) {
        setError('Error updating category');
        console.error(error);
      }
      setLoading(false);
    }
  };

  const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setEditingCategory(prev => prev ? { ...prev, [name]: value } : null);
  };


  const handleEditNumInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setEditingCategory(prev => prev ? { ...prev, [name]: Number(value) } : null);
  };
  
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setNewCategory({ ...newCategory, [e.target.name]: e.target.value });
  };

  const handleInputNumChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setNewCategory({ ...newCategory, [e.target.name]: Number(e.target.value) });
  };
  
  const handleTextAreaChange = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
    setNewCategory({ ...newCategory, [e.target.name]: e.target.value });
  };

  useEffect(() => {
    fetchCategories();
  }, []);

  const fetchCategories = async () => {
    setLoading(true);
    try {
      const response = await axios.get('http://localhost:3000/encCategories');
      setCategories(response.data);
    } catch (error) {
      setError('Error fetching categories');
    }
    setLoading(false);
  };

  const addCategory = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setLoading(true);
    try {
      const response = await axios.post('http://localhost:3000/encCategories', newCategory);
      setCategories(prevCategories => {
        const updatedCategories = [...prevCategories, response.data];
        return updatedCategories.sort((a, b) => a.chrono - b.chrono);
      });
      setNewCategory({
        name: '',
        years: '',
        description: '',
        chrono: 1,
        photo_url: '',
      });
      setIsAdding(false);
    } catch (error) {
      setError('Error adding new category');
      console.error(error);
    }
    setLoading(false);
  };

  const deleteCategory = async (categoryId: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/encCategories/${categoryId}`);
      setCategories(categories.filter(category => category.id !== categoryId));
    } catch (error) {
      setError('Error deleting category');
      console.error(error);
    }
    setLoading(false);
  };

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add a new Group</button>
      {isAdding && (
        <Modal title="Add Group" onClose={() => setIsAdding(false)}>
          <form onSubmit={addCategory} className='addForm'>
            <input type="text" name="name" placeholder="Name" value={newCategory.name} onChange={handleInputChange} />
            <input type="text" name="years" placeholder="Years" value={newCategory.years} onChange={handleInputChange} />
            <textarea name="description" placeholder="Description" value={newCategory.description} onChange={handleTextAreaChange} />
            <input type="number" name="chrono" placeholder="Order" value={newCategory.chrono} onChange={handleInputNumChange} />
            <input type="text" name="photo_url" placeholder="Photo URL" value={newCategory.photo_url} onChange={handleInputChange} />
            <button type="submit">Add Group</button>
          </form>
        </Modal>
      )}
      <h1>Groups</h1>
      <table className='adminTable'>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Years</th>
            <th>Description</th>
            <th>Order</th>
            <th>Photo URL</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {categories.map((category) => (
            <tr key={category.id}>
              <td>{category.id}</td>
              <td>{category.name}</td>
              <td>{category.years}</td>
              <td>{category.description.length > 30 ? (category.description.substring(0, 30).trim() + "...") : (category.description) }</td>
              <td>{category.chrono}</td>
              <td>{category.photo_url.length > 30 ? (category.photo_url.substring(0, 30).trim() + "...") : (category.photo_url) }</td>
              <td>
                <button onClick={() => editCategory(category)} className='editBtn'>Edit</button>
              </td>
              <td>
                <button onClick={() => deleteCategory(category.id)} className='deleteBtn'>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingCategory && (
        <Modal title="Edit Group" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateCategory} className='editForm'>
            <input type="text" name="name" placeholder="Name" value={editingCategory.name} onChange={handleEditInputChange} />
            <input type="text" name="years" placeholder="Years" value={editingCategory.years} onChange={handleEditInputChange} />
            <textarea name="description" placeholder="Description" value={editingCategory.description} onChange={handleEditInputChange} />
            <input type="number" name="chrono" placeholder="Order" value={editingCategory.chrono} onChange={handleEditNumInputChange} />
            <input type="text" name="photo_url" placeholder="Photo URL" value={editingCategory.photo_url} onChange={handleEditInputChange} />
            <button type="submit">Update Group</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminCategories;
