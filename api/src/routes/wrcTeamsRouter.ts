import express from 'express';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();
const wrcTeamsRouter = express.Router();

wrcTeamsRouter.use(express.json());
wrcTeamsRouter.use(express.urlencoded({ extended: true }));

const cors = require('cors');

const corsOptions = {
  origin: 'http://localhost:5173',
  methods: ['GET', 'POST', 'DELETE', 'UPDATE', 'PUT', 'PATCH']
};

wrcTeamsRouter.use(cors(corsOptions));

const ERROR_404 = {error: '404 Not Found'};

// Get all teams
wrcTeamsRouter.get('/', async (req, res) => {
    try {
        const teams = await prisma.wrc_teams.findMany({orderBy: {points: 'desc'}});
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
wrcTeamsRouter.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const team = await prisma.wrc_teams.findUnique({where: {id: parseInt(id)}})
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
wrcTeamsRouter.post('/', async (req, res) => {
    const { name, basedIn, establishment, principal, category, brand, points } = req.body;
    try {
        const newTeam = await prisma.wrc_teams.create({
        data: { name, basedIn, establishment, principal, category, brand, points },
        });
        res.json(newTeam);
    } catch (error) {
        res.status(500).json({ error: 'Error adding record to the teams table' });
    }
});

// Update a team
wrcTeamsRouter.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { name, basedIn, establishment, principal, category, brand, points } = req.body;
    try {
        const updatedTeam = await prisma.wrc_teams.update({
        where: { id: parseInt(id) },
        data: { name, basedIn, establishment, principal, category, brand, points },
        });
        res.json(updatedTeam);
    } catch (error) {
        res.status(500).json({ error: 'Error updating team' });
    }
});

// Delete a team
wrcTeamsRouter.delete('/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await prisma.wrc_teams.delete({ where: { id: parseInt(id) } });
        res.json({ message: 'Data deleted successfully' });
    } catch (error) {
        res.status(500).json({ error: 'Error deleting data' });
    }
});

export default wrcTeamsRouter;
