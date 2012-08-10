var http = require('http'),
    express = require('express'),
    jade = require('jade');

var app = express();

app.set('view engine', 'jade');
app.set('port', 3000);
app.set('host', '0.0.0.0');
app.locals.pretty = true;

app.get('/', function(req, res){
  res.render('index', { 'title':'Pynoby' });
});

http.createServer(app).listen(app.get('port'), app.get('host'), function(){
  console.log("Express server listening on " + app.get('host') + ":" + app.get('port'));
});