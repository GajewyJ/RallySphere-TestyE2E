import express, { Express, Request, Response , Application } from 'express';
import ralliesRouter from './routes/wrcRalliesRouter';
import wrcDriversRouter from './routes/wrcDriversRouter';
import wrcCoDriversRouter from './routes/wrcCoDriversRouter';
import teamsRouter from './routes/wrcTeamsRouter';
import newsRouter from './routes/newsRouter';

const app: Application = express();
const port = process.env.PORT || 3000;

app.get('/', (req: Request, res: Response) => {
  res.send('RallySphere API');
});

app.use('/wrcRallies', ralliesRouter)
app.use('/wrcDrivers', wrcDriversRouter)
app.use('/wrcCoDrivers', wrcCoDriversRouter)
app.use('/wrcTeams', teamsRouter);
app.use('/news', newsRouter);

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});