const sqlite3 = require('sqlite3').verbose();
const bcrypt = require('bcryptjs');
const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;
const saltRounds = 10;

const db = new sqlite3.Database('./database.db');

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
    const { username, email, password, mobile } = req.body;
    
    if (!username || !email || !password || !mobile) {
        return res.status(400).json({ error: 'All fields are required' });
    }

    bcrypt.hash(password, saltRounds, (err, hash) => {
        if (err) return res.status(500).json({ error: err.message });

        const query = `INSERT INTO Accounts (username, email, password, mobile) VALUES (?, ?, ?, ?)`;
        db.run(query, [username, email, hash, mobile], function (err) {
            if (err) {
                return res.status(500).json({ error: err.message });
            }
            res.status(201).json({ id: this.lastID });
        });
    });
});

// Route to authenticate a user
app.post('/api/login', (req, res) => {
    const { email, password } = req.body;

    if (!email || !password) {
        return res.status(400).json({ error: 'Email and password are required' });
    }

    db.get('SELECT id, username, password FROM Accounts WHERE email = ?', [email], (err, row) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        if (!row) {
            return res.status(401).json({ error: 'Invalid email or password' });
        }

        bcrypt.compare(password, row.password, (err, result) => {
            if (err) return res.status(500).json({ error: err.message });

            if (result) {
                res.json({ id: row.id, username: row.username });
            } else {
                res.status(401).json({ error: 'Invalid email or password' });
            }
        });
    });
});

// Other routes...

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
