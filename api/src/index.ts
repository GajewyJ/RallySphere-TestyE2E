import express, { Express, Request, Response , Application } from 'express';
import ralliesRouter from './routes/ralliesRouter';
import wrcDriversRouter from './routes/wrcDriversRouter';

const app: Application = express();
const port = process.env.PORT || 3000;

app.get('/', (req: Request, res: Response) => {
  res.send('RallySphere API');
});

app.use('/rallies', ralliesRouter)
app.use('/wrcDrivers', wrcDriversRouter)

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});