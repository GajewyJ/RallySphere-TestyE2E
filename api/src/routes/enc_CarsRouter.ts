import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const carsRouter = express.Router();

carsRouter.use(express.json());
carsRouter.use(express.urlencoded({ extended: true }));

carsRouter.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    next();
});

const ERROR_404 = { error: '404 Not Found' };

// Get all cars with their category names
carsRouter.get('/', async (req, res) => {
    try {
        const cars = await prisma.enc_cars.findMany({
            include: {
                enc_categories: {
                    select: {
                        name: true  
                    }
                }
            }
        });
        if (cars != null) {
            res.json(cars);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the enc_cars table' });
    }
});


// Get cars by category ID
carsRouter.get('/:cat_id', async (req, res) => {
    try {
        const { cat_id } = req.params;
        const cars = await prisma.enc_cars.findMany({where: { category: parseInt(cat_id) }, 
            include: {
                enc_categories: {
                    select: {
                        name: true  
                    }
                }
        }});
        if (cars != null && cars.length > 0) {
            res.json(cars);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the enc_cars table' });
    }
});

// Get car by ID with its category name
carsRouter.get('/:cat_id/:id', async (req, res) => {
    try {
        const { cat_id, id } = req.params;
        const car = await prisma.enc_cars.findUnique({
            where: { id: parseInt(id), category: parseInt(cat_id) },
            include: {
                enc_categories: {
                    select: {
                        name: true
                    }
                }
            }
        });
        if (car != null) {
            res.json(car);
        } else {
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the enc_cars table' });
    }
});

// Create a new car
carsRouter.post('/', async (req, res) => {
    const { brand, model, description, photo_url, photo_html_attribution, category } = req.body;
    try {
        const newCar = await prisma.enc_cars.create({
            data: { brand, model, description, photo_url, photo_html_attribution, category },
        });
        res.json(newCar);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the enc_cars table' });
    }
});

// Update a car
carsRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { brand, model, description, photo_url, photo_html_attribution, category } = req.body;
    try {
        const updatedCar = await prisma.enc_cars.update({
            where: { id: parseInt(id) },
            data: { brand, model, description, photo_url, photo_html_attribution, category },
        });
        res.json(updatedCar);
    } catch (error) {
        res.status(500).json({ error: 'Error updating car' });
    }
});

// Delete a car
carsRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.enc_cars.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Car deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting car' });
    }
});

export default carsRouter;
