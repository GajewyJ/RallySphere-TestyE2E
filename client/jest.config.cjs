module.exports = {
    preset: 'ts-jest',
    testEnvironment: 'jsdom',
    transform: {
        '^.+\\.scss$': 'jest-css-modules-transform',
    },
    coveragePathIgnorePatterns: [
      "./main.tsx"
    ]
};