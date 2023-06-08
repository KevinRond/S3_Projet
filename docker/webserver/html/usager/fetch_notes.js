import express from 'express';
import { Pool } from 'pg';

const app = express();
const port = 3000;

// PostgreSQL connection configuration
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: 'Doflamingo450$',
    port: 5432, // Default PostgreSQL port
});

// Endpoint for fetching grades
app.get('/api/grades/:cip', (req, res) => {
    const cip = req.params.cip;

    const query = `
    SELECT *
    FROM vue_notes_etudiant
    WHERE comp1 = $1
  `;

    pool.query(query, [cip])
        .then(result => {
            const rows = result.rows;
            res.json(rows);
        })
        .catch(err => {
            console.error('Error executing query', err);
            res.status(500).json({ error: 'Internal Server Error' });
        });
});

// Start the server
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
