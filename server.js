const express = require('express');
const app = express();

const { Pool } = require('pg');
const pool = new Pool({ 
    user: 'swearjarapi',
    password: 'swearjarapi',
    host: 'localhost',
    port: 5432, //default port
    database: 'swearjar'
});

app.use(express.json());

// GET ALL swears
app.get('/swears', async (req, res) => {
    try {
        const result = await pool.query('SELECT swears.date_created, people.name, people.person_id, swears.id FROM swears INNER JOIN people ON swears.person_id = people.person_id ORDER BY swears.date_created DESC');
        res.status(200).json(result.rows);
        console.log(result.rows);
    } catch(error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// GET ALL people
app.get('/people', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM people ORDER BY person_id ASC');
        res.status(200).json(result.rows);
        console.log(result.rows);
    } catch(error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// GET ALL swears from a specific person
app.get('/people/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query('SELECT swears.date_created, people.name, people.person_id, swears.id FROM swears INNER JOIN people ON swears.person_id = people.person_id WHERE swears.person_id = $1 ORDER BY swears.date_created DESC', [id]);
        res.status(200).json(result.rows);
        console.log(result.rows);
    } catch(error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// GET ONE specific swear based on swear id
app.get('/swears/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query('SELECT swears.date_created, people.name, people.person_id, swears.id FROM swears INNER JOIN people ON swears.person_id = people.person_id WHERE swears.id = $1', [id]);
        console.log(result.rows[0]);
        res.status(200).json(result.rows[0]);
    } catch(error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// CREATE ONE swear -- id in this case refers to person_id
app.post('/swears/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query('INSERT INTO swears (date_created, person_id) VALUES (CURRENT_TIMESTAMP, $1) RETURNING *', [id]);
        console.log(result.rows[0]);
        res.status(200).json(result.rows[0]);
    } catch (error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
})

// CREATE ONE person -- no id required, must send in the body
app.post('/people', async (req, res) => {
    const body = req.body;
    console.log(body);
    try {
        const result = await pool.query('INSERT INTO people (name) VALUES ($1) RETURNING *', [body.name] );
        res.status(200).json(result.rows[0]);
        console.log(result.rows[0])
    } catch (error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// DELETE ONE person
app.delete('/people/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query('DELETE FROM people WHERE person_id = $1 RETURNING *', [id]);
        console.log(result.rows[0]);
        res.status(200).json(result.rows[0]);
    } catch(error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// DELETE ONE swear
app.delete('/swears/:id', async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query('DELETE FROM swears WHERE id = $1 RETURNING *', [id]);
        console.log(result.rows[0]);
        res.status(200).json(result.rows[0]);
    } catch(error) { 
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
});

// UPDATE ONE person
app.put('/people/:id', async (req, res) => {
    const { id } = req.params;
    const body = req.body;
    try {
        const result = await pool.query('UPDATE people SET name = $1 WHERE person_id = $2 RETURNING *', [body.name, id]);
        console.log(result.rows[0]);
        res.status(200).json(result.rows[0]);
    } catch(error) {
        res.status(500).send('Internal Server Error');
        console.error(error);
    }
})

app.listen('3002', () => {
    console.log("Listening on port 3002");
})
