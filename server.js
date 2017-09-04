const express = require('express')
const app = express()

app.get('/set', function (req, res) {
  res.send('Hello World!')
  console.log('I ve got to the GET request. THank you, Alan')
})

app.listen(4000, function () {
  console.log('Example app listening on port 4000!')
  console.log('http://localhost:4000')
})
