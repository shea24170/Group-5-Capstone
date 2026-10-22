
require('dotenv').config();

const express = require('express');
const pool = require('./db');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.get('/', (req, res) => {
  res.send('FIVE-STAR Retail Store Backend Server is Running Successfully!');
});

// Retrieve all products from MySQL
app.get('/api/products', async (req, res) => {
  try {
    const [products] = await pool.query(
      'SELECT * FROM products_product'
    );

    res.json(products);
  } catch (error) {
    console.error('Error fetching products:', error.message);
    res.status(500).json({
      error: 'Failed to fetch products'
    });
  }
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on port ${PORT}`);
});
