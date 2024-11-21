import request from 'supertest';
import express from 'express';
import newsRouter from '../routes/newsRouter';
import { PrismaClient } from '@prisma/client';

jest.mock('@prisma/client', () => {
    const mockPrisma = {
        news: {
            findMany: jest.fn(),
            findUnique: jest.fn(),
            create: jest.fn(),
            update: jest.fn(),
            delete: jest.fn(),
        },
    };
    return { PrismaClient: jest.fn(() => mockPrisma) };
});

const prismaMock = new PrismaClient();
const app = express();
app.use(express.json());
app.use('/api/news', newsRouter);

describe('News Router', () => {
    afterEach(() => {
        jest.clearAllMocks();
    });

    const mockFindMany = prismaMock.news.findMany as jest.Mock;
    const mockFindUnique = prismaMock.news.findUnique as jest.Mock;
    const mockCreate = prismaMock.news.create as jest.Mock;
    const mockUpdate = prismaMock.news.update as jest.Mock;
    const mockDelete = prismaMock.news.delete as jest.Mock;

    describe('GET /api/news/', () => {
        it('should return all news', async () => {
            const mockNews = [{ id: 1, title: 'News A' }, { id: 2, title: 'News B' }];
            mockFindMany.mockResolvedValue(mockNews);

            const response = await request(app).get('/api/news/');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockNews);
        });

        it('should return 404 if no news are found', async () => {
            mockFindMany.mockResolvedValue(null);

            const response = await request(app).get('/api/news/');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindMany.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/news/');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the news table' });
        });
    });

    describe('GET /api/news/latest', () => {
        it('should return the latest news', async () => {
            const mockNews = [{ id: 1, title: 'Latest News A' }, { id: 2, title: 'Latest News B' }];
            mockFindMany.mockResolvedValue(mockNews);

            const response = await request(app).get('/api/news/latest');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockNews);
        });

        it('should return 404 if no latest news are found', async () => {
            mockFindMany.mockResolvedValue(null);

            const response = await request(app).get('/api/news/latest');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindMany.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/news/latest');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the news table' });
        });
    });

    describe('GET /api/news/:id', () => {
        it('should return the news item with the given ID', async () => {
            const mockNewsItem = { id: 1, title: 'News A' };
            mockFindUnique.mockResolvedValue(mockNewsItem);

            const response = await request(app).get('/api/news/1');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockNewsItem);
        });

        it('should return 404 if the news item is not found', async () => {
            mockFindUnique.mockResolvedValue(null);

            const response = await request(app).get('/api/news/999');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindUnique.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/news/1');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the news table' });
        });
    });

    describe('POST /api/news/', () => {
        it('should create a new news item', async () => {
            const newNewsItem = {
                title: 'News A',
                paragraph1: 'Paragraph 1',
                paragraph2: 'Paragraph 2',
                paragraph3: 'Paragraph 3',
                photo: 'photo.jpg',
                publicationDate: '2024-01-01',
            };
            mockCreate.mockResolvedValue({ id: 1, ...newNewsItem });

            const response = await request(app).post('/api/news/').send(newNewsItem);
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ id: 1, ...newNewsItem });
        });

        it('should return 500 on server error', async () => {
            const newNewsItem = {
                title: 'News A',
                paragraph1: 'Paragraph 1',
                paragraph2: 'Paragraph 2',
                paragraph3: 'Paragraph 3',
                photo: 'photo.jpg',
                publicationDate: '2024-01-01',
            };
            mockCreate.mockRejectedValue(new Error('Server error'));

            const response = await request(app).post('/api/news/').send(newNewsItem);
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error adding record to the news table' });
        });
    });

    describe('PUT /api/news/:id', () => {
        it('should update the news item with the given ID', async () => {
            const updatedNewsItem = {
                title: 'Updated News',
                paragraph1: 'Updated Paragraph 1',
                paragraph2: 'Updated Paragraph 2',
                paragraph3: 'Updated Paragraph 3',
                photo: 'updated_photo.jpg',
                publicationDate: '2024-02-01',
            };
            mockUpdate.mockResolvedValue({ id: 1, ...updatedNewsItem });

            const response = await request(app).put('/api/news/1').send(updatedNewsItem);
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ id: 1, ...updatedNewsItem });
        });

        it('should return 500 on server error', async () => {
            const updatedNewsItem = {
                title: 'Updated News',
                paragraph1: 'Updated Paragraph 1',
                paragraph2: 'Updated Paragraph 2',
                paragraph3: 'Updated Paragraph 3',
                photo: 'updated_photo.jpg',
                publicationDate: '2024-02-01',
            };
            mockUpdate.mockRejectedValue(new Error('Server error'));

            const response = await request(app).put('/api/news/1').send(updatedNewsItem);
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error updating news item' });
        });
    });

    describe('DELETE /api/news/:id', () => {
        it('should delete the news item with the given ID', async () => {
            mockDelete.mockResolvedValue({});

            const response = await request(app).delete('/api/news/1');
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ message: 'Data deleted successfully' });
        });

        it('should return 500 on server error', async () => {
            mockDelete.mockRejectedValue(new Error('Server error'));

            const response = await request(app).delete('/api/news/1');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error deleting data' });
        });
    });
});
