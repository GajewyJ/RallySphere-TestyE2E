import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const wrcCoDriversRouter = express.Router();

wrcCoDriversRouter.use(express.json());
wrcCoDriversRouter.use(express.urlencoded({ extended: true }));

wrcCoDriversRouter.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    next();
});

const ERROR_404 = {error: '404 Not Found'};

// Get all co-drivers
wrcCoDriversRouter.get('/', async (req, res) => {
    try {
        const coDrivers = await prisma.wrc_codrivers.findMany();
        if(coDrivers != null) {
            res.json(coDrivers);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } 
    catch (error) {
        res.status(500).json({ error: 'Error fetching data from the co-drivers table' });
    }
});

// Get co-driver by ID
wrcCoDriversRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const coDrivers = await prisma.wrc_codrivers.findUnique({where: {id: parseInt(id)}})
        if(coDrivers != null) {
            res.json(coDrivers);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the co-drivers table' });
    }
});

// Create a new co-driver
wrcCoDriversRouter.post('/', async (req, res) => {
    const { firstName, lastName, country, team } = req.body;
    try {
        const newCoDriver = await prisma.wrc_codrivers.create({
        data: { firstName, lastName, country, team },
        });
        res.json(newCoDriver);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the co-drivers table' });
    }
});

// Update a co-driver
wrcCoDriversRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { firstName, lastName, country, team } = req.body;
    try {
        const updatedCoDriver = await prisma.wrc_codrivers.update({
        where: { id: parseInt(id) },
        data: { firstName, lastName, country, team },
        });
        res.json(updatedCoDriver);
    } catch (error) {
        res.status(500).json({ error: 'Error updating co-driver' });
    }
});

// Delete a co-driver
wrcCoDriversRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.wrc_codrivers.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Data deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting data' });
    }
});

export default wrcCoDriversRouter;