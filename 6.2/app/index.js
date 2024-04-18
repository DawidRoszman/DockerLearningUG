const express = require("express");

const app = express();

const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "db",
  user: "root",
  password: "pass",
});

connection.connect((err) => {
  if (err) {
    console.log("Error connecting to Db");
    console.log(err);
    return;
  }
  console.log("Connection established");
});

const PORT = 3000;

app.get("/", (req, res) => {
  // display information about connection to db
  connection.query("SHOW DATABASES", (err, rows) => {
    if (err) {
      console.log("Error connecting to Db");
      return;
    }
    console.log("Data received from Db:\n");
    console.log(rows);
    res.send(rows);
  });
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server is running on PORT ${PORT}`);
});
