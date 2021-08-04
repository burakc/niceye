var express = require('express');
var app = express();
var mysql = require('mysql');
var port = 3000;

var server = app.listen(port, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("API listening at http://%s:%s", host, port)
});

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "xdafb329",
  database: "niceye"
});

con.connect(function(err) {
   if (err) throw err;
});

app.get('/customers', function (req, res) {
   con.query("SELECT * FROM customer", function (err, result, fields) {
      if (err) throw err;
      res.json(result)
   });
})

