import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'
import Heading from '../../components/heading';
import { useParams } from 'react-router-dom';

interface News {
  id: number;
  title: string;
  paragraph1: string;
  paragraph2: string;
  paragraph3: string;
  photo: string;
  publicationDate: Date;
}

function SingleNews(){
  const [news, setNews] = useState<News | null>(null);
  const { id } = useParams<{ id: string }>();

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<News>('http://localhost:3000/news/' + id);
        setNews(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, [id]);

  return (
    <article>
      <Heading level={1}>WRC News</Heading>
      {news && (
        <div>
          <img src={news.photo} alt={news.title}/>
          <div>{news.publicationDate.toString().substring(8, 10) + '.' + news.publicationDate.toString().substring(5, 7) + '.' + news.publicationDate.toString().substring(0, 4) + ' ' + news.publicationDate.toString().substring(11, 13) + ':' + news.publicationDate.toString().substring(14, 16)}</div>
          <div>{news.title}</div>
          <div>{news.paragraph1}</div>
          <div>{news.paragraph2}</div>
          <div>{news.paragraph3}</div>
        </div>
      )}
    </article>
  );
};

export default SingleNews;
