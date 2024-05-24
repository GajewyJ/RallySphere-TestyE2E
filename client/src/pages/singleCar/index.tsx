import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss';
import Heading from '../../components/heading';
import { Link, useParams } from 'react-router-dom';

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

function SingleCar() {
  const [car, setCar] = useState<Car | null>(null);
  const { cat_id, id } = useParams<{ cat_id: string; id: string }>();

  useEffect(() => {
    document.title = car ? `AutoSphere - ${car.brand} ${car.model}` : 'AutoSphere';
  }, [car]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Car>(`http://localhost:3000/encCars/${cat_id}/${id}`);
        setCar(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, [cat_id, id]);

  return (
    <article>
      {car && (
        <div className='carBody'>
          <Heading level={1}>{car.brand} {car.model}</Heading>
          <p className='category'>{car.enc_categories.name}</p>
          <img src={car.photo_url} alt={`${car.brand} ${car.model}`} />
          <span dangerouslySetInnerHTML={{ __html: car.photo_html_attribution }}></span>
          <p>{car.description}</p>
          <Link to={"/groups/" + car.category}>Back</Link>
        </div>
      )}
    </article>
  );
}

export default SingleCar;
