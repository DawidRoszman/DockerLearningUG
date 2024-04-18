import { MongoClient } from "mongodb";

const url = process.env.MONGO_URL || "mongodb://host.docker.internal:27017";
const client = new MongoClient(url);

const getDb = () => client.db("database");

export default getDb;
