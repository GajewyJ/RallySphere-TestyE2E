import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const categoriesRouter = express.Router();

categoriesRouter.use(express.json());
categoriesRouter.use(express.urlencoded({ extended: true }));

const cors = require('cors');

const corsOptions = {
  origin: 'http://localhost:5173',
  methods: ['GET', 'POST', 'DELETE', 'UPDATE', 'PUT', 'PATCH']
};

categoriesRouter.use(cors(corsOptions));

const ERROR_404 = { error: '404 Not Found' };

// Get all categories
categoriesRouter.get('/', async (req, res) => {
    try {
        const categories = await prisma.enc_categories.findMany({orderBy: {chrono: 'asc'}});
        if (categories != null) {
            res.json(categories);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the enc_categories table' });
    }
});

// Get category by ID
categoriesRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const category = await prisma.enc_categories.findUnique({ where: { id: parseInt(id) } });
        if (category != null) {
            res.json(category);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the enc_categories table' });
    }
});

// Create a new category
categoriesRouter.post('/', async (req, res) => {
    const { name, years, description, chrono, photo_url } = req.body;
    try {
        const newCategory = await prisma.enc_categories.create({
            data: { name, years, description, chrono, photo_url },
        });
        res.json(newCategory);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the enc_categories table' });
    }
});

// Update a category
categoriesRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { name, years, description, chrono, photo_url } = req.body;
    try {
        const updatedCategory = await prisma.enc_categories.update({
            where: { id: parseInt(id) },
            data: { name, years, description, chrono, photo_url },
        });
        res.json(updatedCategory);
    } catch (error) {
        res.status(500).json({ error: 'Error updating category' });
    }
});

// Delete a category
categoriesRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.enc_categories.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Category deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting category' });
    }
});

export default categoriesRouter;
