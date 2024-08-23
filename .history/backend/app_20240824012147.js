
const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('./database.db');
const express = require('express');
const bodyParser = require('body-parser');


const app = express();
const PORT = process.env.PORT || 3000;


db.serialize(() => {
    db.run(`CREATE TABLE IF NOT EXISTS Accounts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NOT NULL UNIQUE,
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL,
        mobile TEXT NOT NULL UNIQUE,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    )`);
});


app.use(bodyParser.json());

// Route to create a new account
app.post('/api/accounts', (req, res) => {
    const { username, email, password } = req.body;
    
    if (!username || !email || !password) {
        return res.status(400).json({ error: 'All fields are required' });
    }

    const query = `INSERT INTO Accounts (username, email, password) VALUES (?, ?, ?)`;
    db.run(query, [username, email, password], function (err) {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.status(201).json({ id: this.lastID });
    });
});

// Route to get all accounts
app.get('/api/accounts', (req, res) => {
    db.all('SELECT id, username, email, created_at FROM Accounts', [], (err, rows) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(rows);
    });
});

// Route to get a specific account by ID
app.get('/api/accounts/:id', (req, res) => {
    const { id } = req.params;
    db.get('SELECT id, username, email, created_at FROM Accounts WHERE id = ?', [id], (err, row) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        if (!row) {
            return res.status(404).json({ error: 'Account not found' });
        }
        res.json(row);
    });
});

// Route to update an account
app.put('/api/accounts/:id', (req, res) => {
    const { id } = req.params;
    const { username, email, password } = req.body;

    const query = `UPDATE Accounts SET username = ?, email = ?, password = ? WHERE id = ?`;
    db.run(query, [username, email, password, id], function (err) {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        if (this.changes === 0) {
            return res.status(404).json({ error: 'Account not found' });
        }
        res.json({ message: 'Account updated' });
    });
});

// Route to delete an account
app.delete('/api/accounts/:id', (req, res) => {
    const { id } = req.params;

    const query = `DELETE FROM Accounts WHERE id = ?`;
    db.run(query, id, function (err) {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        if (this.changes === 0) {
            return res.status(404).json({ error: 'Account not found' });
        }
        res.json({ message: 'Account deleted' });
    });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
