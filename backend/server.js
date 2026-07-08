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
// SINGLE ASANA DETAIL API
// GET /api/asanas/:slug — full detail for one asana, including AI-generated
// content (beginner_tips, common_mistakes) and related Benefits/Precautions/
// Chakra rows. Precautions doubles as "Safety Notes" in the UI — no separate
// safety_notes column exists by design, to avoid duplicating the same data.
app.get('/api/asanas/:slug', async (req, res) => {
  try {
    const { slug } = req.params;

    const asanaResult = await pool.query(
      `SELECT a.asana_id, a.category_id, c.category_name, a.sanskrit_name,
              a.english_name, a.difficulty, a.description, a.steps,
              a.muscles_targeted, a.common_mistakes, a.beginner_tips,
              a.slug, a.duration
       FROM Asanas a
       JOIN Categories c ON c.category_id = a.category_id
       WHERE a.slug = $1`,
      [slug]
    );

    if (asanaResult.rows.length === 0) {
      return res.status(404).json({ error: 'Asana not found' });
    }

    const asana = asanaResult.rows[0];

    const [benefitsResult, precautionsResult, chakraResult] = await Promise.all([
      pool.query('SELECT benefit FROM Benefits WHERE asana_id = $1', [asana.asana_id]),
      pool.query('SELECT precaution FROM Precautions WHERE asana_id = $1', [asana.asana_id]),
      pool.query('SELECT chakra_name FROM Chakra_Information WHERE asana_id = $1', [asana.asana_id]),
    ]);

    res.json({
      ...asana,
      benefits: benefitsResult.rows.map((r) => r.benefit),
      // Reused as "Safety Notes" in the UI - see comment above
      safety_notes: precautionsResult.rows.map((r) => r.precaution),
      chakras: chakraResult.rows.map((r) => r.chakra_name),
    });
  } catch (err) {
    console.error('Database query error:', err.message);
    res.status(500).json({ error: 'Something went wrong fetching this asana' });
  }
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
