const express = require('express')
const app = express()

var store;

app.get('/set', function (req, res) {
  res.send(req.query)
  store = req.query
  console.log('I ve got here.')
})

app.get('/get', function (req, res) {
  res.send(store)
  console.log(store)
})

app.listen(4000, function () {
  console.log('Example app listening on port 4000!')
  console.log('http://localhost:4000')
})
