'use strict';
module.exports = function(app) {
  var todoList = require('../controllers/mainController');

  app.route('/')
    .get(todoList.get)
};