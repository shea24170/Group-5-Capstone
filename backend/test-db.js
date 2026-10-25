const pool = require('./db');

async function testConnection() {
  try {
    const connection = await pool.getConnection();
    console.log('MySQL Database Connected Successfully!');
    connection.release();
  } catch (error) {
    console.error('Database Connection Failed:', error.message);
  } finally {
    await pool.end();
  }
}

testConnection();