import express, { Request, Response } from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const ralliesRouter = express.Router();

ralliesRouter.use(express.json());
ralliesRouter.use(express.urlencoded({ extended: true }));

// Get data from the 'rallies' table
ralliesRouter.get('/', async (req: Request, res: Response) => {
  try {
    const rallies = await prisma.rallies.findMany();
    res.json(rallies);
  } catch (error) {
    res.status(500).json({ error: 'Error fetching data from the rallies table' });
  }
});

// Get data from the 'rallies' table based on ID
ralliesRouter.get('/:id', async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const rally = await prisma.rallies.findUnique({
      where: { id: parseInt(id) },
    });
    if (!rally) {
      res.status(404).json({ error: 'Rally not found' });
    } else {
      res.json(rally);
    }
  } catch (error) {
    res.status(500).json({ error: 'Error fetching data from the rallies table' });
  }
});

// Add a new record to the 'rallies' table
ralliesRouter.post('/', async (req: Request, res: Response) => {
  const { name, season, country, beginning, end } = req.body;
  let beg = new Date(beginning)
  let end1 = new Date(end)
  try {
    const newRally = await prisma.rallies.create({
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
ralliesRouter.put('/:id', async (req: Request, res: Response) => {
  const { id } = req.params;
  const { name, season, country, beginning, end } = req.body;
  let beg = new Date(beginning)
  let end1 = new Date(end)
  try {
    const updatedRally = await prisma.rallies.update({
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
ralliesRouter.delete('/:id', async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    await prisma.rallies.delete({
      where: { id: parseInt(id) },
    });
    res.json({ message: 'Rally successfully deleted' });
  } catch (error) {
    res.status(500).json({ error: 'Error deleting record from the rallies table' });
  }
});

export default ralliesRouter;