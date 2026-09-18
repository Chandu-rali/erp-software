const express = require("express");
const cors = require("cors");
const mysql = require("mysql2/promise");

const app = express();

app.use(cors());
app.use(express.json());

const PORT = process.env.PORT || 5000;

const pool = mysql.createPool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10
});

app.get("/", (req, res) => {
    res.json({
        company: "ERP Software Private Limited",
        message: "ERP Backend API is running"
    });
});

app.get("/api/health", async (req, res) => {

    try {

        await pool.query("SELECT 1");

        res.json({
            status: "UP",
            database: "CONNECTED"
        });

    } catch (error) {

        res.status(500).json({
            status: "DOWN",
            database: "ERROR"
        });

    }
});

app.get("/api/employees", async (req, res) => {

    try {

        const [rows] = await pool.query(`
            SELECT
                id,
                employee_id,
                first_name,
                last_name,
                email,
                phone,
                department,
                designation,
                employment_type,
                joining_date,
                basic_salary,
                profile_image
            FROM employees
            ORDER BY id
        `);

        res.json(rows);

    } catch (error) {

        console.error(error);

        res.status(500).json({
            error: "Unable to retrieve employees"
        });

    }

});

app.get("/api/employees/:id", async (req, res) => {

    try {

        const [rows] = await pool.query(
            "SELECT * FROM employees WHERE id = ?",
            [req.params.id]
        );

        if (rows.length === 0) {

            return res.status(404).json({
                error: "Employee not found"
            });

        }

        res.json(rows[0]);

    } catch (error) {

        console.error(error);

        res.status(500).json({
            error: "Unable to retrieve employee"
        });

    }

});

app.listen(PORT, "0.0.0.0", () => {

    console.log(
        `ERP Backend running on port ${PORT}`
    );

});
