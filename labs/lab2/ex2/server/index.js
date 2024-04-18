const express = require("express");
const app = express();
const port = 8080;

app.get("/", (req, res) => {
  const currentDateTime = new Date();
  res.send({ currentTime: currentDateTime });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
