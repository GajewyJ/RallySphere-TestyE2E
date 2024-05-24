import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss';
import Heading from '../heading';
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
  }
}

function CarsByGroup() {
    const [cars, setCars] = useState<Car[]>([]);
    const { cat_id } = useParams<{ cat_id: string }>();

    useEffect(() => {
        const fetchData = async () => {
            try {
                const response = await axios.get<Car[]>(`http://localhost:3000/encCars/${cat_id}`);
                if (response.status === 200) {
                    setCars(response.data);
                }
            } catch (error) {
                if (axios.isAxiosError(error) && error.response && error.response.status === 404) {
                    console.log(`No cars found for category id: ${cat_id}`);
                } else {
                    console.error('Error fetching data', error);
                }
            }
        };
        
    
        fetchData();
    }, [cat_id]);

    useEffect(() => {
        if (cars.length > 0 && cars[0].enc_categories) {
            document.title = 'RallySphere - ' + cars[0].enc_categories.name;
        }
    }, [cars]);

    return (
        <article>
            {cars.length > 0 && cars[0].enc_categories ? (
                <>
                    <Heading level={1}>{cars[0].enc_categories.name}</Heading>
                    <div>
                        {cars.map((car) => (
                            <Link to="/" key={car.id} className='singleCarA'>
                                <h2>{car.brand} {car.model}</h2>
                                <img src={car.photo_url}/>
                            </Link>
                        ))}
                    </div>
                </>
            ) : (
                <Heading level={1}>
                    No cars found in this category.
                </Heading>
            )}
        </article>
    );
}

export default CarsByGroup;
