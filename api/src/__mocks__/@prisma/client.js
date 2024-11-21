const prismaMock = {
    wrc_teams: {
        findMany: jest.fn(),
        findUnique: jest.fn(),
        create: jest.fn(),
        update: jest.fn(),
        delete: jest.fn(),
    },
};

module.exports = {
    PrismaClient: jest.fn(() => prismaMock),
};
