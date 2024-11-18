const express = require("express");

// Create an instance of Express
const app = express();

// Define the '/' endpoint
app.get("/", (req, res) => {
  res.send("Hello World!");
});

// Set the server to listen on a specific port
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
