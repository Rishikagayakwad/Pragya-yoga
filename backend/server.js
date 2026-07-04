require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
app.use(cors());
app.use(express.json());

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});

app.get('/', (req, res) => {
  res.json({ message: 'Pragya Yoga Verse API is running' });
});

app.get('/api/asanas', async (req, res) => {
  try {
    const result = await pool.query(
      'SELECT asana_id, sanskrit_name, english_name, difficulty, category_id FROM Asanas ORDER BY asana_id'
    );
    res.json(result.rows);
  } catch (err) {
    console.error('Database query error:', err.message);
    res.status(500).json({ error: 'Something went wrong fetching asanas' });
  }
});
// CATEGORY API
// GET /api/categories — list all categories
app.get('/api/categories', async (req, res) => {
  try {
    const result = await pool.query(
      'SELECT category_id, category_name, description FROM Categories ORDER BY category_id'
    );
    res.json(result.rows);
  } catch (err) {
    console.error('Database query error:', err.message);
    res.status(500).json({ error: 'Something went wrong fetching categories' });
  }
});

// GET /api/categories/:id/asanas — all asanas within one category
app.get('/api/categories/:id/asanas', async (req, res) => {
  try {
    const { id } = req.params;
    const result = await pool.query(
      'SELECT asana_id, sanskrit_name, english_name, difficulty FROM Asanas WHERE category_id = $1 ORDER BY asana_id',
      [id]
    );
    res.json(result.rows);
  } catch (err) {
    console.error('Database query error:', err.message);
    res.status(500).json({ error: 'Something went wrong fetching asanas for this category' });
  }
});

// SEARCH API
// GET /api/search?q=warrior&difficulty=Beginner
app.get('/api/search', async (req, res) => {
  try {
    const { q, difficulty } = req.query;
    let query = 'SELECT asana_id, sanskrit_name, english_name, difficulty, category_id FROM Asanas WHERE 1=1';
    const params = [];

    if (q) {
      params.push(`%${q}%`);
      query += ` AND (sanskrit_name ILIKE $${params.length} OR english_name ILIKE $${params.length})`;
    }
    if (difficulty) {
      params.push(difficulty);
      query += ` AND difficulty = $${params.length}`;
    }
    query += ' ORDER BY asana_id';

    const result = await pool.query(query, params);
    res.json(result.rows);
  } catch (err) {
    console.error('Database query error:', err.message);
    res.status(500).json({ error: 'Something went wrong searching asanas' });
  }
});
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
