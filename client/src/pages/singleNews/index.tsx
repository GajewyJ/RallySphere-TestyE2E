import { useEffect, useState } from 'react';
import axios from 'axios';
import './index.scss'
import Heading from '../../components/heading';
import { Link, useParams } from 'react-router-dom';

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
        document.title = 'RallySphere - ' + response.data.title;
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };
  
    fetchData();
  }, [id]);  

  if(news != null){
    return (
      <article>
        {news && (
          <div className='newsBody'>
            <Heading level={1}>{news.title}</Heading>
            <p className='date'>{news.publicationDate.toString().substring(8, 10) + '.' + news.publicationDate.toString().substring(5, 7) + '.' + news.publicationDate.toString().substring(0, 4) + ' ' + news.publicationDate.toString().substring(11, 13) + ':' + news.publicationDate.toString().substring(14, 16)}</p>
            <img src={"/news-images/" + news.photo} alt={news.title}/>
            <p>{news.paragraph1}</p>
            <p>{news.paragraph2}</p>
            <p>{news.paragraph3}</p>
            <Link to="/wrc/news">Back</Link>
          </div>
        )}
      </article>
    );
  }
  else{
    return (
      <article>
        <h1>404 Not found</h1>
        <h3>Our server is not working or this news item does not exist</h3>
      </article>
    );
  }
};

export default SingleNews;
