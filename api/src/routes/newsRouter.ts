import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const newsRouter = express.Router();

newsRouter.use(express.json());
newsRouter.use(express.urlencoded({ extended: true }));

newsRouter.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    next();
});

const ERROR_404 = {error: '404 Not Found'};

// Get all news
newsRouter.get('/', async (req, res) => {
    try {
        const news = await prisma.news.findMany();
        if(news != null) {
            res.json(news);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } 
    catch (error) {
        res.status(500).json({ error: 'Error fetching data from the news table' });
    }
});

// Get 3 latest news
newsRouter.get('/latest', async (req, res) => {
    try {
        const news = await prisma.news.findMany({orderBy: {publicationDate: 'desc'}, take: 3});
        if(news != null) {
            res.json(news);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } 
    catch (error) {
        res.status(500).json({ error: 'Error fetching data from the news table' });
    }
});

// Get news by ID
newsRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const newsItem = await prisma.news.findUnique({where: {id: parseInt(id)}})
        if(newsItem != null) {
            res.json(newsItem);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the news table' });
    }
});

// Create a new news item
newsRouter.post('/', async (req, res) => {
    const { title, paragraph1, paragraph2, paragraph3, photo, publicationDate } = req.body;
    try {
        const newNewsItem = await prisma.news.create({
        data: { title, paragraph1, paragraph2, paragraph3, photo, publicationDate },
        });
        res.json(newNewsItem);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the news table' });
    }
});

// Update a news item
newsRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { title, paragraph1, paragraph2, paragraph3, photo, publicationDate } = req.body;
    try {
        const updatedNewsItem = await prisma.news.update({
        where: { id: parseInt(id) },
        data: { title, paragraph1, paragraph2, paragraph3, photo, publicationDate },
        });
        res.json(updatedNewsItem);
    } catch (error) {
        res.status(500).json({ error: 'Error updating news item' });
    }
});

// Delete a news item
newsRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.news.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Data deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting data' });
    }
});

export default newsRouter;