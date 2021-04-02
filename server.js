var express = require('express'),
  app = express(),
  port = process.env.PORT || 3000;

var routes = require('./api/routes/mainRoute');
routes(app)

app.listen(port);

console.log('API server started on: ' + port);