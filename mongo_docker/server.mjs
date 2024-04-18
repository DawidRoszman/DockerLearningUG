import express from "express";
import db from "./conn.mjs";

const port = 8080;
const hostname = "0.0.0.0";
const app = express();

app.get("/", async (req, res) => {
  const data = await db.collection("data").findOne();
  console.log(data);
  res.send(data);
});

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
