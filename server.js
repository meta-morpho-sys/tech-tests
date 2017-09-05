const express = require('express')
const app = express()

var store;

app.get('/set', function (req, res) {
  res.send(req.query)
  store = req.query
  console.log('I ve got to SET.')
})

app.get('/get', function (req, res) {
  res.send(store[req.query.key])
  console.log(store)
})

app.listen(4000, function () {
  console.log('App listening on port 4000!')
  console.log('http://localhost:4000')
})
