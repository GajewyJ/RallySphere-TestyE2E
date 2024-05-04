import { useEffect, useState } from 'react';
import axios from 'axios';
import { Card, Container, Row, Col } from 'react-bootstrap';
import './index.scss'

interface Rally {
  id: number;
  name: string;
  season: string;
  country: string;
  beginning: Date;
  end: Date;
}

function UpcomingRalliesBar(){
  const [rallies, setRallies] = useState<Rally[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Rally[]>('http://localhost:3000/wrcrallies/upcoming');
        setRallies(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  const [ongoingRally, setOngoingRally] = useState<Rally[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<Rally[]>('http://localhost:3000/wrcrallies/ongoing');
        setOngoingRally(response.data);
      } catch (error) {
        console.error('Error fetching data', error);
      }
    };

    fetchData();
  }, []);

  if(ongoingRally[0] === undefined){
    return (
      <Container>
        <Row>
          {rallies.map((rally, index) => (
            <Col sm={4} key={index}>
              <Card className="mb-4">
                <Card.Body>
                  <Card.Title>Upcoming: {rally.name}</Card.Title>
                  <Card.Text>
                    <strong>From:</strong> {rally.beginning.toString().substring(0, 10)}<br/>
                    <strong>To:</strong> {rally.end.toString().substring(0, 10)}
                  </Card.Text>
                </Card.Body>
              </Card>
            </Col>
          ))}
        </Row>
      </Container>
    );
  }
  else{
    return (
      <Container>
        <Row>
          {ongoingRally.map((rally, index) => (
            <Col sm={4} key={index}>
              <Card className="mb-4">
                <Card.Body>
                  <Card.Title>Ongoing rally: {rally.name}</Card.Title>
                  <Card.Text>
                    <strong>From:</strong> {rally.beginning.toString().substring(0, 10)}<br/>
                    <strong>To:</strong> {rally.end.toString().substring(0, 10)}
                  </Card.Text>
                </Card.Body>
              </Card>
            </Col>
          ))}
        </Row>
      </Container>
    );
  }
};

export default UpcomingRalliesBar;