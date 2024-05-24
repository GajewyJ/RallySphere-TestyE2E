import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss';
import Heading from '../heading';
import { Link } from 'react-router-dom';

interface Category {
  id: number;
  name: string;
  years: string;
  description: string;
}

function AllCategories() {
  const [categories, setCategories] = useState<Category[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Category[]>('http://localhost:3000/encCategories');
        setCategories(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  return (
    <article>
      <Heading level={1}>Car Groups</Heading>
      <div>
        {categories.map((category) => (
          <Link to={'/groups/' + category.id.toString()} key={category.id}>
            <div>
              <h2>{category.name}</h2>
              <p>{category.years}</p>
            </div>
          </Link>
        ))}
      </div>
    </article>
  );
}

export default AllCategories;
