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

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
