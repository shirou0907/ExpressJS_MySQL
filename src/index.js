const express = require('express')
const app = express()
const port = 2000
const con = require('./app/config/db')

app.get('/', (req, res) => {
  res.sendFile(__dirname+'/app/views/index.html')
})

app.get('/public', function (req, res) {
  var sql = "SELECT * FROM Hanghoa";
  con.query(sql, function(err, results) {
    if (err) throw err;
    res.send(results);
  });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})