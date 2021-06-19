var express = require('express');
var app = express();
var request = require('request');

app.get('/', function (req, res) {
  var jokes = {
    url: 'http://bash.org.pl/text'
  };

  request.get(jokes, function (error, response, body) {
    res.send((((body.replace(/(\n%\n)/gm, "%")).replace(/(\r\n|\n|\r)/gm, " ")).split("%")).slice(0, 100));
  });
});

app.listen(8888);