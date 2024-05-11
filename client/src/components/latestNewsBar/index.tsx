import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'
import Heading from '../heading';

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
        {news.map((newsItem, index) => (
          <a href={'http://localhost:3000/news/' + newsItem.id.toString()} key={newsItem.id}>
            <img src={newsItem.photo} alt={newsItem.title}/>
            <p>{newsItem.publicationDate.toString()}</p>
            <p>{newsItem.title}</p>
          </a>
        ))}
      </div>
    </article>
  );
};

export default LatestNewsBar;
