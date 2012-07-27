var http = require('http'),
    express = require('express'),
    swig = require('swig'),
    _ = require('underscore');

var app = express();

var template_path = '/vagrant/shared/templates'

app.engine('html', function(path, options, fn){
  options = options || {};
  try {
    options.filename = path;
    var tmpl = swig.compileFile(_.last(path.split('/')));
    fn(null, tmpl.render(options));
  } catch (err) {
    fn(err);
  }
});

app.set('views', template_path);
app.set('port', 3000)
app.set('host', '0.0.0.0')

swig.init({
  root: template_path,
  allowErrors: true
});

app.get('/', function(req, res){
  res.render('index.html', {'title':'Pynoby'});
});

http.createServer(app).listen(app.get('port'), app.get('host'), function(){
  console.log("Express server listening on " + app.get('host') + ":" + app.get('port'));
});