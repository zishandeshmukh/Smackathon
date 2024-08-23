const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const bcrypt = require('bcryptjs');
const sqlite3 = require('sqlite3').verbose();
const dotenv = require('dotenv');

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;
const saltRounds = 10;
const sessionSecret = process.env.SESSION_SECRET || 'default_secret';

const db = new sqlite3.Database('./database.db');

// Initialize session middleware
app.use(session({
    secret: sessionSecret,
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false } // set to true if using HTTPS
}));

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
                req.session.userId = row.id; // Save user ID in session
                res.json({ id: row.id, username: row.username });
            } else {
                res.status(401).json({ error: 'Invalid email or password' });
            }
        });
    });
});

// Middleware to check authentication
const isAuthenticated = (req, res, next) => {
    if (req.session.userId) {
        return next();
    }
    res.status(401).json({ error: 'Unauthorized' });
};

// Route to get data (protected)
app.get('/api/data', isAuthenticated, (req, res) => {
    // Replace with your logic to get data from database
    res.json({ message: 'Authenticated data' });
});

// Route to logout
app.post('/api/logout', (req, res) => {
    req.session.destroy(err => {
        if (err) return res.status(500).json({ error: 'Failed to log out' });
        res.json({ message: 'Logged out successfully' });
    });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
