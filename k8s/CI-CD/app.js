const express = require('express');
const app = express();

// Default to v1, but allow override via environment variable
const version = process.env.APP_VERSION || "v1";

app.get('/', (req, res) => {
  if (version === "v1") {
    res.json({ message: "Hello from Node API v1" });
  } else if (version === "v2") {
    res.json({ message: "Hello from Node API v2" });
  } else {
    res.json({ message: `Hello from Node API ${version}` });
  }
});

app.get('/health', (req, res) => res.json({ status: "healthy" }));

app.listen(3000, () => console.log(`App running with version ${version} on port 3000`));
