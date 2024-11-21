import request from 'supertest';
import express from 'express';
import wrcRalliesRouter from '../routes/wrcRalliesRouter';
import { PrismaClient } from '@prisma/client';

jest.mock('@prisma/client', () => {
    const mockPrisma = {
        wrc_rallies: {
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
app.use('/api/wrc-rallies', wrcRalliesRouter);

describe('WRC Rallies Router', () => {
    afterEach(() => {
        jest.clearAllMocks();
    });

    const mockFindMany = prismaMock.wrc_rallies.findMany as jest.Mock;
    const mockFindUnique = prismaMock.wrc_rallies.findUnique as jest.Mock;
    const mockCreate = prismaMock.wrc_rallies.create as jest.Mock;
    const mockUpdate = prismaMock.wrc_rallies.update as jest.Mock;
    const mockDelete = prismaMock.wrc_rallies.delete as jest.Mock;

    describe('GET /api/wrc-rallies/', () => {
        it('should return all rallies', async () => {
            const mockRallies = [{ id: 1, name: 'Rally A' }, { id: 2, name: 'Rally B' }];
            mockFindMany.mockResolvedValue(mockRallies);

            const response = await request(app).get('/api/wrc-rallies/');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockRallies);
        });

        it('should return 404 if no rallies are found', async () => {
            mockFindMany.mockResolvedValue(null);

            const response = await request(app).get('/api/wrc-rallies/');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindMany.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/wrc-rallies/');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the rallies table' });
        });
    });

    describe('GET /api/wrc-rallies/upcoming', () => {
        it('should return upcoming rallies', async () => {
            const mockRallies = [{ id: 1, name: 'Upcoming Rally' }];
            mockFindMany.mockResolvedValue(mockRallies);

            const response = await request(app).get('/api/wrc-rallies/upcoming');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockRallies);
        });

        it('should return 404 if no upcoming rallies are found', async () => {
            mockFindMany.mockResolvedValue(null);

            const response = await request(app).get('/api/wrc-rallies/upcoming');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindMany.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/wrc-rallies/upcoming');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the rallies table' });
        });
    });

    describe('GET /api/wrc-rallies/:id', () => {
        it('should return the rally with the given ID', async () => {
            const mockRally = { id: 1, name: 'Rally A' };
            mockFindUnique.mockResolvedValue(mockRally);

            const response = await request(app).get('/api/wrc-rallies/1');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockRally);
        });

        it('should return 404 if the rally is not found', async () => {
            mockFindUnique.mockResolvedValue(null);

            const response = await request(app).get('/api/wrc-rallies/999');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindUnique.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/wrc-rallies/1');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the rallies table' });
        });
    });

    describe('POST /api/wrc-rallies/', () => {
        it('should create a new rally', async () => {
            const newRally = {
                name: 'Rally A',
                season: '2024',
                country: 'Country A',
                beginning: '2024-01-01',
                end: '2024-01-03',
            };
            mockCreate.mockResolvedValue({ id: 1, ...newRally });

            const response = await request(app).post('/api/wrc-rallies/').send(newRally);
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ id: 1, ...newRally });
        });

        it('should return 500 on server error', async () => {
            const newRally = {
                name: 'Rally A',
                season: '2024',
                country: 'Country A',
                beginning: '2024-01-01',
                end: '2024-01-03',
            };
            mockCreate.mockRejectedValue(new Error('Server error'));

            const response = await request(app).post('/api/wrc-rallies/').send(newRally);
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error adding record to the rallies table' });
        });
    });

    describe('PUT /api/wrc-rallies/:id', () => {
        it('should update the rally with the given ID', async () => {
            const updatedRally = {
                name: 'Updated Rally',
                season: '2024',
                country: 'Country B',
                beginning: '2024-02-01',
                end: '2024-02-03',
            };
            mockUpdate.mockResolvedValue({ id: 1, ...updatedRally });

            const response = await request(app).put('/api/wrc-rallies/1').send(updatedRally);
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ id: 1, ...updatedRally });
        });

        it('should return 500 on server error', async () => {
            const updatedRally = {
                name: 'Updated Rally',
                season: '2024',
                country: 'Country B',
                beginning: '2024-02-01',
                end: '2024-02-03',
            };
            mockUpdate.mockRejectedValue(new Error('Server error'));

            const response = await request(app).put('/api/wrc-rallies/1').send(updatedRally);
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error updating record in the rallies table' });
        });
    });

    describe('DELETE /api/wrc-rallies/:id', () => {
        it('should delete the rally with the given ID', async () => {
            mockDelete.mockResolvedValue({});

            const response = await request(app).delete('/api/wrc-rallies/1');
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ message: 'Rally successfully deleted' });
        });

        it('should return 500 on server error', async () => {
            mockDelete.mockRejectedValue(new Error('Server error'));

            const response = await request(app).delete('/api/wrc-rallies/1');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error deleting record from the rallies table' });
        });
    });

    describe('GET /api/wrc-rallies/ongoing', () => {
        it('should return ongoing rallies', async () => {
            const mockRallies = [{ id: 1, name: 'Ongoing Rally' }];
            mockFindMany.mockResolvedValue(mockRallies);

            const response = await request(app).get('/api/wrc-rallies/ongoing');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockRallies);
        });

        it('should return message if no ongoing rallies are found', async () => {
            mockFindMany.mockResolvedValue([]);

            const response = await request(app).get('/api/wrc-rallies/ongoing');
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ message: 'No ongoing WRC rallies' });
        });

        it('should return 500 on server error', async () => {
            mockFindMany.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/wrc-rallies/ongoing');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the rallies table' });
        });
    });
});
