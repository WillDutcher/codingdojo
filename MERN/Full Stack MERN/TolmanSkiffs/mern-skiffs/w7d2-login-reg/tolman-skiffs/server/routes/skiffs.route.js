// import my controllers
const SkiffsController = require('../controllers/skiffs.controller');

// add in the JWT middleware function "authenticate" - we named it in jwt.config.js
const { authenticate } = require("../config/jwt.config");

// create the valid routes
module.exports = (app) => {
  app.get('/api/skiffs', SkiffsController.getAll);
  app.post('/api/skiffs', authenticate, SkiffsController.create);
  app.get('/api/skiffs/:id', authenticate, SkiffsController.getOne);
  app.put('/api/skiffs/:id', SkiffsController.update);
  app.delete('/api/skiffs/:id', authenticate, SkiffsController.delete);
}