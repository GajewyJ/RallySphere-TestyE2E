import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Modal from '../modal';
import './index.scss';

interface NewsItem {
    id: number;
    title: string;
    paragraph1: string;
    paragraph2: string;
    paragraph3: string;
    photo: string;
    publicationDate: string;
}

const AdminNews: React.FC = () => {
    const [newsItems, setNewsItems] = useState<NewsItem[]>([]);
    const [loading, setLoading] = useState<boolean>(true);
    const [error, setError] = useState<string | null>(null);
    const [newNewsItem, setNewNewsItem] = useState({
        title: '',
        paragraph1: '',
        paragraph2: '',
        paragraph3: '',
        photo: '',
        publicationDate: '',
    });
    const [isEditing, setIsEditing] = useState<boolean>(false);
    const [isAdding, setIsAdding] = useState<boolean>(false);
    const [editingNewsItem, setEditingNewsItem] = useState<NewsItem | null>(null);

    const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
        const { name, value } = e.target;
        setNewNewsItem({ ...newNewsItem, [name]: value });
    };

    const handleEditInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
        const { name, value } = e.target;
        if (editingNewsItem) {
        setEditingNewsItem({ ...editingNewsItem, [name]: value });
        }
    };

    const addNewsItem = async (e: React.FormEvent<HTMLFormElement>) => {
        e.preventDefault();
        setLoading(true);
        try {;
            const formattedDate = new Date(new Date(newNewsItem.publicationDate).getTime() - new Date().getTimezoneOffset() * 60 * 1000).toISOString()
            const newsData = {
                ...newNewsItem,
                publicationDate: formattedDate
            };
        
            const response = await axios.post('http://localhost:3000/news', newsData);
            const addedNewsItem = response.data;
            setNewsItems([...newsItems, addedNewsItem]);
            setNewNewsItem({
                title: '',
                paragraph1: '',
                paragraph2: '',
                paragraph3: '',
                photo: '',
                publicationDate: '',
            });
            setIsAdding(false);
        } catch (error) {
            setError('Error adding new news item');
        }
        setLoading(false);
    };
  
    const updateNewsItem = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!editingNewsItem) return;
    setLoading(true);
    try {
      const formattedDate = new Date(new Date(editingNewsItem.publicationDate).getTime() - new Date().getTimezoneOffset() * 60 * 1000).toISOString();
      const response = await axios.put(`http://localhost:3000/news/${editingNewsItem.id}`, {
        ...editingNewsItem,
        publicationDate: formattedDate,
      });
      const updatedNewsItem = response.data;
      setNewsItems(newsItems.map(item => item.id === updatedNewsItem.id ? updatedNewsItem : item));
      setIsEditing(false);
      setEditingNewsItem(null);
    } catch (error) {
      setError('Error updating news item');
    }
    setLoading(false);
  };

  const deleteNewsItem = async (id: number) => {
    setLoading(true);
    try {
      await axios.delete(`http://localhost:3000/news/${id}`);
      setNewsItems(newsItems.filter(item => item.id !== id));
    } catch (error) {
      setError('Error deleting news item');
    }
    setLoading(false);
  };

  useEffect(() => {
    const fetchNewsItems = async () => {
      setLoading(true);
      try {
        const response = await axios.get('http://localhost:3000/news');
        setNewsItems(response.data);
      } catch (error) {
        setError('Error fetching news items');
      }
      setLoading(false);
    };

    fetchNewsItems();
  }, []);

  function getFirst30Chars(longString: string) {
    return longString.substring(0, 30).trim() + '...';
  }

  function formatDateWithTime(dateString: string) {
    const date = new Date(dateString);
    const day = String(date.getUTCDate()).padStart(2, '0');
    const month = String(date.getUTCMonth() + 1).padStart(2, '0');
    const year = date.getUTCFullYear();
    const hours = String(date.getUTCHours()).padStart(2, '0');
    const minutes = String(date.getUTCMinutes()).padStart(2, '0');

    return `${day}-${month}-${year} ${hours}:${minutes}`;
  }

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className='adminPanelContent'>
      <button onClick={() => {setIsAdding(true)}} className='addNewCarBtn'>Add new News</button>
      {isAdding && (
        <Modal title="Add News" onClose={() => setIsAdding(false)}>
          <form onSubmit={addNewsItem} className='addForm'>
            <input type="text" name="title" placeholder="Title" value={newNewsItem.title} onChange={handleInputChange} required />
            <textarea name="paragraph1" placeholder="First Paragraph" value={newNewsItem.paragraph1} onChange={handleInputChange} required />
            <textarea name="paragraph2" placeholder="Second Paragraph" value={newNewsItem.paragraph2} onChange={handleInputChange} />
            <textarea name="paragraph3" placeholder="Third Paragraph" value={newNewsItem.paragraph3} onChange={handleInputChange} />
            <input type="text" name="photo" placeholder="Photo File Name" value={newNewsItem.photo} onChange={handleInputChange} />
            <input type="datetime-local" name="publicationDate" placeholder="Publication Date" value={newNewsItem.publicationDate} onChange={handleInputChange} required />
            <button type="submit">Add News</button>
          </form>
        </Modal>
      )}
      <h1>News</h1>
      <table className='adminTableNews'>
        <thead>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>First Paragraph</th>
            <th>Second Paragraph</th>
            <th>Third Paragraph</th>
            <th>Photo</th>
            <th>Publication Date</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {newsItems.map((item) => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.title && getFirst30Chars(item.title)}</td>
              <td>{item.paragraph1 && getFirst30Chars(item.paragraph1)}</td>
              <td>{item.paragraph2 && getFirst30Chars(item.paragraph2)}</td>
              <td>{item.paragraph3 && getFirst30Chars(item.paragraph3)}</td>
              <td>{item.photo && getFirst30Chars(item.photo)}</td>
              <td>{item.publicationDate && formatDateWithTime(item.publicationDate)}</td>
              <td>
                <button onClick={() => { setEditingNewsItem(item); setIsEditing(true); }} className='editBtn'>Edit</button>
              </td>
              <td>
                <button onClick={() => deleteNewsItem(item.id)} className='deleteBtn'>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {isEditing && editingNewsItem && (
        <Modal title="Edit News Item" onClose={() => setIsEditing(false)}>
          <form onSubmit={updateNewsItem} className='editForm'>
            <input type="text" name="title" placeholder="Title" value={editingNewsItem.title} onChange={handleEditInputChange} required />
            <textarea name="paragraph1" placeholder="First Paragraph" value={editingNewsItem.paragraph1} onChange={handleEditInputChange} required />
            <textarea name="paragraph2" placeholder="Second Paragraph" value={editingNewsItem.paragraph2} onChange={handleEditInputChange} />
            <textarea name="paragraph3" placeholder="Third Paragraph" value={editingNewsItem.paragraph3} onChange={handleEditInputChange} />
            <input type="text" name="photo" placeholder="Photo URL" value={editingNewsItem.photo} onChange={handleEditInputChange} />
            <input type="datetime-local" name="publicationDate" placeholder="Publication Date" value={editingNewsItem.publicationDate} onChange={handleEditInputChange} required />
            <button type="submit">Update News Item</button>
          </form>
        </Modal>
      )}
    </div>
  );
};

export default AdminNews;
