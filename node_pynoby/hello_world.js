var express = require('express');
var swig = require('swig');

var app = express.createServer();

swig.init({
  root: 'views',
});

var tpl = swig.compileFile("index.html");

app.get('/', function(req, res){
  res.send(tpl.render());
});

app.listen(3000, '0.0.0.0', function(){
  console.log("Express server listening on port 0.0.0.0:3000");
});