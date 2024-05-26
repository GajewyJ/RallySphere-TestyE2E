import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const wrcDriversRouter = express.Router();

wrcDriversRouter.use(express.json());
wrcDriversRouter.use(express.urlencoded({ extended: true }));

const cors = require('cors');

const corsOptions = {
  origin: 'http://localhost:5173',
  methods: ['GET', 'POST', 'DELETE', 'UPDATE', 'PUT', 'PATCH']
};

wrcDriversRouter.use(cors(corsOptions));

const ERROR_404 = {error: '404 Not Found'};

// Get all drivers
wrcDriversRouter.get('/', async (req, res) => {
    try {
        const drivers = await prisma.wrc_drivers.findMany({orderBy: {points: 'desc'}});
        if(drivers != null) {
            res.json(drivers);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } 
    catch (error) {
        res.status(500).json({ error: 'Error fetching data from the drivers table' });
    }
});

// Get driver by ID
wrcDriversRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const driver = await prisma.wrc_drivers.findUnique({where: {id: parseInt(id)}})
        if(driver != null) {
            res.json(driver);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the drivers table' });
    }
});

// Create a new driver
wrcDriversRouter.post('/', async (req, res) => {
    const { firstName, lastName, country, team, points } = req.body;
    try {
        const newDriver = await prisma.wrc_drivers.create({
        data: { firstName, lastName, country, team, points },
        });
        res.json(newDriver);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the drivers table' });
    }
});

// Update a driver
wrcDriversRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { firstName, lastName, country, team, points } = req.body;
    try {
        const updatedDriver = await prisma.wrc_drivers.update({
        where: { id: parseInt(id) },
        data: { firstName, lastName, country, team, points },
        });
        res.json(updatedDriver);
    } catch (error) {
        res.status(500).json({ error: 'Error updating driver' });
    }
});

// Delete a driver
wrcDriversRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.wrc_drivers.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Data deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting data' });
    }
});

export default wrcDriversRouter;
