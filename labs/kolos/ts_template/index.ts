const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  const currentDateTime = new Date();
  res.send({ currentTime: currentDateTime, waited: false });
});

app.get("/wait", (req, res) => {
  const currentDateTime = new Date();
  setTimeout(() => {
    console.log("Waited!");
    res.send({ currentTime: currentDateTime, waited: true });
  }, 5000);
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
