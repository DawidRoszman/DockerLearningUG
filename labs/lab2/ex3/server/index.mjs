import express from "express";
import getDb from "./getDb.mjs";

const app = express();
const port = 8080;

app.get("/", (req, res) => {
  const currentDateTime = new Date();
  res.send({ currentTime: currentDateTime });
});

app.get("/data", async (req, res) => {
  const response = await getDb().collection("test").find({}).toArray();
  res.send(response);
});

app.listen(port, async () => {
  await getDb().collection("test").insertOne({ test: "test" });
  console.log(`Server running at http://localhost:${port}`);
});
