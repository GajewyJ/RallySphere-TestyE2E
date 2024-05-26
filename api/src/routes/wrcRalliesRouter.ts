import express, { Request, Response } from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const wrcRalliesRouter = express.Router();

wrcRalliesRouter.use(express.json());
wrcRalliesRouter.use(express.urlencoded({ extended: true }));

wrcRalliesRouter.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});

const ERROR_404 = {error: '404 Not Found'};

// Get data from the 'rallies' table
wrcRalliesRouter.get('/', async (req: Request, res: Response) => {
  try {
    const rallies = await prisma.wrc_rallies.findMany();
    if(rallies != null) {
        res.json(rallies);
    }
    else{
        res.status(404).json(ERROR_404);
    }
  } catch (error: any) {
    res.status(500).json({ error: 'Error fetching data from the rallies table' });
  }
});

// Get ongoing rally data from the 'rallies' table
wrcRalliesRouter.get('/ongoing', async (req: Request, res: Response) => {
  try {
    const now = new Date();
    const endOfDay = new Date(now.getFullYear(), now.getMonth(), now.getDate());
    const rallies = await prisma.wrc_rallies.findMany({where: { beginning: { lte: now }, end: { gte: endOfDay }}});
    if(rallies.length == 0){  
        res.json({message: "No ongoing WRC rallies"})
    }
    else if(rallies != null) {
        res.json(rallies);
    }
    else{
        res.status(404).json(ERROR_404);
    }
  } catch (error: any) {
    res.status(500).json({ error: 'Error fetching data from the rallies table' });
  }
});

// Get 3 upcoming WRC rallies from the 'rallies' table
wrcRalliesRouter.get('/upcoming', async (req: Request, res: Response) => {
  try {
    const now = new Date();
    const rallies = await prisma.wrc_rallies.findMany({where: { beginning: { gt: now }}, orderBy: {beginning: 'asc'}, take: 1});
    if(rallies != null) {
        res.json(rallies);
    }
    else{
        res.status(404).json(ERROR_404);
    }
  } catch (error: any) {
    res.status(500).json({ error: 'Error fetching data from the rallies table' });
  }
});

// Get data from the 'rallies' table based on ID
wrcRalliesRouter.get('/:id', async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const rally = await prisma.wrc_rallies.findUnique({
      where: { id: parseInt(id) },
    });
    if (!rally) {
      res.status(404).json(ERROR_404);
    } else {
      res.json(rally);
    }
  } catch (error) {
    res.status(500).json({ error: 'Error fetching data from the rallies table' });
  }
});

// Add a new record to the 'rallies' table
wrcRalliesRouter.post('/', async (req: Request, res: Response) => {
  const { name, season, country, beginning, end } = req.body;
  let beg = new Date(beginning)
  let end1 = new Date(end)
  try {
    const newRally = await prisma.wrc_rallies.create({
      data: {
        name,
        season,
        country,
        beginning: beg,
        end: end1,
      },
    });
    res.json(newRally);
  } catch (error) {
    res.status(500).json({ error: 'Error adding record to the rallies table' });
  }
});

// Update an existing record in the 'rallies' table
wrcRalliesRouter.put('/:id', async (req: Request, res: Response) => {
  const { id } = req.params;
  const { name, season, country, beginning, end } = req.body;
  let beg = new Date(beginning)
  let end1 = new Date(end)
  try {
    const updatedRally = await prisma.wrc_rallies.update({
      where: { id: parseInt(id) },
      data: {
        name,
        season,
        country,
        beginning: beg,
        end: end1,
      },
    });
    res.json(updatedRally);
  } catch (error) {
    res.status(500).json({ error: 'Error updating record in the rallies table' });
  }
});

// Delete a record from the 'rallies' table based on ID
wrcRalliesRouter.delete('/:id', async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    await prisma.wrc_rallies.delete({
      where: { id: parseInt(id) },
    });
    res.json({ message: 'Rally successfully deleted' });
  } catch (error) {
    res.status(500).json({ error: 'Error deleting record from the rallies table' });
  }
});

export default wrcRalliesRouter;