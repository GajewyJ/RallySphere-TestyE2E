import express, { Express, Request, Response , Application } from 'express';
import router from './routes/ralliesRouter';
import ralliesRouter from './routes/ralliesRouter';

const app: Application = express();
const port = process.env.PORT || 3000;

app.get('/', (req: Request, res: Response) => {
  res.send('RallySphere API');
});

app.use('/rallies', ralliesRouter)

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});