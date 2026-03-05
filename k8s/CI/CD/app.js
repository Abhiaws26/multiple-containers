const express = require('express');
const app = express();

const version = process.env.APP_VERSION || "v1";

app.get('/', (req, res) => {
  res.json({ message: `Hello from Node API ${version}` });
});

app.get('/health', (req, res) => res.json({ status: "healthy" }));

app.listen(3000, () => console.log("App running on port 3000"));
