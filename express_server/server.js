const express = require("express");
const app = express();

function formatDateToCustomString(date) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  const hours = String(date.getHours() + 1).padStart(2, "0");
  const minutes = String(date.getMinutes()).padStart(2, "0");
  const seconds = String(date.getSeconds()).padStart(2, "0");

  return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
}

app.get("/", (req, res) => {
  date_now = new Date();
  res.send(`${formatDateToCustomString(date_now)}`);
});

app.listen(8080, () => {
  console.log("Server is listening on port 8080");
});
