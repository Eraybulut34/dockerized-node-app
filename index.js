const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const INSTANCE = process.env.INSTANCE || 'default';

app.get('/', (req, res) => {
  res.send(`App ${INSTANCE} running on port ${PORT}`);
  
});

app.listen(PORT, () => {

  console.log(`App ${INSTANCE} running on port ${PORT}`);
});
