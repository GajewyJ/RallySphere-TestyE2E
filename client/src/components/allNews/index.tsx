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

function AllNews(){
  const [news, setNews] = useState<News[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<News[]>('http://localhost:3000/news');
        setNews(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  if(news.length > 0){
    return (
      <article>
        <Heading level={1}>WRC News</Heading>
        <div>
          {news.map((newsItem) => (
            <Link to={'/wrc/news/' + newsItem.id.toString()} key={newsItem.id}>
              <img src={"/news-images/" + newsItem.photo} alt={newsItem.title}/>
              <p>{newsItem.publicationDate.toString().substring(8, 10) + '.' + newsItem.publicationDate.toString().substring(5, 7) + '.' + newsItem.publicationDate.toString().substring(0, 4) + ' ' + newsItem.publicationDate.toString().substring(11, 13) + ':' + newsItem.publicationDate.toString().substring(14, 16)}</p>
              <p>{newsItem.title}</p>
            </Link>
          ))}
        </div>
      </article>
    );
  }
  else{
    return (
      <article>
        <Heading level={1}>WRC News</Heading>
        <h3>No news found</h3>
      </article>
    );
  }
};

export default AllNews;
