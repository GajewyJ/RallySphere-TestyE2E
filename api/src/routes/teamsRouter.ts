import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const teamsRouter = express.Router();

teamsRouter.use(express.json());
teamsRouter.use(express.urlencoded({ extended: true }));

const ERROR_404 = {error: '404 Not Found'};

// Get all teams
teamsRouter.get('/', async (req, res) => {
    try {
        const teams = await prisma.teams.findMany();
        if(teams != null) {
            res.json(teams);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } 
    catch (error) {
        res.status(500).json({ error: 'Error fetching data from the teams table' });
    }
});

// Get team by ID
teamsRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const team = await prisma.teams.findUnique({where: {id: parseInt(id)}})
        if(team != null) {
            res.json(team);
        }
        else{
            res.status(404).json(ERROR_404);
        }
    } catch (error) {
        res.status(500).json({ error: 'Error fetching data from the teams table' });
    }
});

// Create a new team
teamsRouter.post('/', async (req, res) => {
    const { name, basedIn, establishment, principal, category, brand, points } = req.body;
    try {
        const newTeam = await prisma.teams.create({
        data: { name, basedIn, establishment, principal, category, brand, points },
        });
        res.json(newTeam);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the teams table' });
    }
});

// Update a team
teamsRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { name, basedIn, establishment, principal, category, brand, points } = req.body;
    try {
        const updatedTeam = await prisma.teams.update({
        where: { id: parseInt(id) },
        data: { name, basedIn, establishment, principal, category, brand, points },
        });
        res.json(updatedTeam);
    } catch (error) {
        res.status(500).json({ error: 'Error updating team' });
    }
});

// Delete a team
teamsRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.teams.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Data deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting data' });
    }
});

export default teamsRouter;
