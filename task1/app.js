const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  const currentTime = new Date();
  const ipAddress = req.ip;

  res.json({
    timestamp: currentTime.toISOString(),
    ip: ipAddress
  });
});

app.listen(port, () => {
  console.log(`SimpleTimeService listening at http://localhost:${port}`);
});

