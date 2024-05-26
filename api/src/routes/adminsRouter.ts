import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const adminsRouter = express.Router();

adminsRouter.use(express.json());
adminsRouter.use(express.urlencoded({ extended: true }));

adminsRouter.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    next();
});

const ERROR_404 = { error: '404 Not Found' };

// Get all admins
adminsRouter.get('/', async (req, res) => {
    try {
        const admins = await prisma.admins.findMany();
        if (admins) {
            res.json(admins);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the admins table' });
    }
});

// Get admin by ID
adminsRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const admin = await prisma.admins.findUnique({ where: { id: parseInt(id) } });
        if (admin) {
            res.json(admin);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the admins table' });
    }
});

// Create a new admin
adminsRouter.post('/', async (req, res) => {
    const { username, password } = req.body;
    try {
        const newAdmin = await prisma.admins.create({
            data: { username, password },
        });
        res.json(newAdmin);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the admins table' });
    }
});

// Update an admin
adminsRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { username, password } = req.body;
    try {
        const updatedAdmin = await prisma.admins.update({
            where: { id: parseInt(id) },
            data: { username, password },
        });
        res.json(updatedAdmin);
    } catch (error) {
        res.status(500).json({ error: 'Error updating admin' });
    }
});

// Delete an admin
adminsRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.admins.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Admin deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting admin' });
    }
});

export default adminsRouter;
