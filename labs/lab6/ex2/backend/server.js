const express = require("express");
const mysql = require("mysql2");
const bodyParser = require("body-parser");
const port = process.env.PORT || 3000;

// Create connection
const db = mysql.createConnection({
  host: "l6e2-db",
  user: "root",
  password: "password",
  database: "mysql",
});

// Connect
const interval = setInterval(() => {
  db.connect((err) => {
    if (err) {
      console.log(err);
      return;
    }
    console.log("MySQL Connected...");
    clearInterval(interval);
  });
}, 5000);

const app = express();

app.use(bodyParser.json());

// Insert data
app.post("/add", (req, res) => {
  let data = { name: req.body.name, value: req.body.value };
  let sql = "INSERT INTO mytable SET ?";
  db.query(sql, data, (err, result) => {
    if (err) throw err;
    console.log(result);
    res.send("Data added...");
  });
});

// Get data
app.get("/", (req, res) => {
  let sql = "SELECT 2 + 2";
  db.query(sql, (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

app.listen(port, () => {
  console.log(`Server started on port ${port}`);
});
