const os = require('os');
const express = require('express');

const app = express();

const HOST = process.env.HOST || '0.0.0.0';
const PORT = process.env.PORT || 1337;

app.get('/', (req, res) => {
  res.send(`<h1>This request was processed by host: ${os.hostname}</h1>`);
});

app.listen(PORT,  HOST, () => {
  console.log(`server listening on ${HOST}:${PORT}`);
});