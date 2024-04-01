import express, { Express, Request, Response , Application } from 'express';

const app: Application = express();
const port = process.env.PORT || 8000;

app.get('/', (req: Request, res: Response) => {
  res.send('Hello World');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});