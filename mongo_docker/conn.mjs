import { MongoClient } from "mongodb";
const connectionString = "mongodb://192.168.0.135:27017";
const client = new MongoClient(connectionString);
let conn;
try {
  console.log("Trying to connect");
  conn = await client.connect();
} catch (e) {
  console.error(e);
}
let db = conn.db("express");
export default db;
