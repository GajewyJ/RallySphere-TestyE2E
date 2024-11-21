import request from 'supertest';
import express from 'express';
import wrcTeamsRouter from '../routes/wrcTeamsRouter';
import { PrismaClient } from '@prisma/client';

jest.mock('@prisma/client', () => {
    const mockPrisma = {
        wrc_teams: {
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
app.use('/api/wrc-teams', wrcTeamsRouter);

describe('WRC Teams Router', () => {
    afterEach(() => {
        jest.clearAllMocks();
    });

    const mockFindMany = prismaMock.wrc_teams.findMany as jest.Mock;
    const mockFindUnique = prismaMock.wrc_teams.findUnique as jest.Mock;
    const mockCreate = prismaMock.wrc_teams.create as jest.Mock;
    const mockUpdate = prismaMock.wrc_teams.update as jest.Mock;
    const mockDelete = prismaMock.wrc_teams.delete as jest.Mock;

    describe('GET /api/wrc-teams/:id', () => {
        it('should return the team with the given ID', async () => {
            const mockTeam = { id: 1, name: 'Team A', points: 100 };
            mockFindUnique.mockResolvedValue(mockTeam);

            const response = await request(app).get('/api/wrc-teams/1');
            expect(response.status).toBe(200);
            expect(response.body).toEqual(mockTeam);
        });

        it('should return 404 if the team is not found', async () => {
            mockFindUnique.mockResolvedValue(null);

            const response = await request(app).get('/api/wrc-teams/999');
            expect(response.status).toBe(404);
            expect(response.body).toEqual({ error: '404 Not Found' });
        });

        it('should return 500 on server error', async () => {
            mockFindUnique.mockRejectedValue(new Error('Server error'));

            const response = await request(app).get('/api/wrc-teams/1');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error fetching data from the teams table' });
        });
    });

    describe('POST /api/wrc-teams/', () => {
        it('should create a new team', async () => {
            const newTeam = {
                name: 'Team A',
                basedIn: 'City A',
                establishment: '2020',
                principal: 'Principal A',
                category: 'WRC',
                brand: 'Brand A',
                points: 100,
            };
            mockCreate.mockResolvedValue({ id: 1, ...newTeam });

            const response = await request(app).post('/api/wrc-teams/').send(newTeam);
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ id: 1, ...newTeam });
        });

        it('should return 500 on server error', async () => {
            const newTeam = {
                name: 'Team A',
                basedIn: 'City A',
                establishment: '2020',
                principal: 'Principal A',
                category: 'WRC',
                brand: 'Brand A',
                points: 100,
            };
            mockCreate.mockRejectedValue(new Error('Server error'));

            const response = await request(app).post('/api/wrc-teams/').send(newTeam);
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error adding record to the teams table' });
        });
    });

    describe('PUT /api/wrc-teams/:id', () => {
        it('should update the team with the given ID', async () => {
            const updatedTeam = {
                name: 'Updated Team',
                basedIn: 'City B',
                establishment: '2021',
                principal: 'Principal B',
                category: 'WRC',
                brand: 'Brand B',
                points: 200,
            };
            mockUpdate.mockResolvedValue({ id: 1, ...updatedTeam });

            const response = await request(app).put('/api/wrc-teams/1').send(updatedTeam);
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ id: 1, ...updatedTeam });
        });

        it('should return 500 on server error', async () => {
            const updatedTeam = {
                name: 'Updated Team',
                basedIn: 'City B',
                establishment: '2021',
                principal: 'Principal B',
                category: 'WRC',
                brand: 'Brand B',
                points: 200,
            };
            mockUpdate.mockRejectedValue(new Error('Server error'));

            const response = await request(app).put('/api/wrc-teams/1').send(updatedTeam);
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error updating team' });
        });
    });

    describe('DELETE /api/wrc-teams/:id', () => {
        it('should delete the team with the given ID', async () => {
            mockDelete.mockResolvedValue({});

            const response = await request(app).delete('/api/wrc-teams/1');
            expect(response.status).toBe(200);
            expect(response.body).toEqual({ message: 'Data deleted successfully' });
        });

        it('should return 500 on server error', async () => {
            mockDelete.mockRejectedValue(new Error('Server error'));

            const response = await request(app).delete('/api/wrc-teams/1');
            expect(response.status).toBe(500);
            expect(response.body).toEqual({ error: 'Error deleting data' });
        });
    });
});
