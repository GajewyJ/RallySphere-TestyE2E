import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'
import Heading from '../heading';
import { Link } from 'react-router-dom';

interface News {
  id: number;
  title: string;
  paragraph1: string;
  paragraph2: string;
  paragraph3: string;
  photo: string;
  publicationDate: Date;
}

function LatestNewsBar(){
  const [news, setNews] = useState<News[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<News[]>('http://localhost:3000/news/latest');
        setNews(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  return (
    <article>
      <Heading level={1}>Latest WRC News</Heading>
      <div>
        {news.map((newsItem) => (
          <Link to={'/wrc/news/' + newsItem.id.toString()} key={newsItem.id}>
            <img src={newsItem.photo} alt={newsItem.title}/>
            <p>{newsItem.publicationDate.toString().substring(8, 10) + '.' + newsItem.publicationDate.toString().substring(5, 7) + '.' + newsItem.publicationDate.toString().substring(0, 4) + ' ' + newsItem.publicationDate.toString().substring(11, 13) + ':' + newsItem.publicationDate.toString().substring(14, 16)}</p>
            <p>{newsItem.title}</p>
          </Link>
        ))}
      </div>
    </article>
  );
};

export default LatestNewsBar;
