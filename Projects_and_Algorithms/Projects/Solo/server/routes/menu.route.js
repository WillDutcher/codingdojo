// const MenuController = require('../controllers/menu.controller_OLD');
const MenuController = require("../controllers/menu.controller");

module.exports = (app) => {
  app.get("/api/menu", MenuController.getAll);
  // app.post('/api/menu', MenuController.create);
  // app.get('/api/menu/:id', MenuController.getOne);
  // app.put('/api/menu/:id', MenuController.update);
  // app.delete('/api/menu/:id', MenuController.remove);
  // app.put('/api/menu/fave/6057df4e9494781344bc4221', MenuController.fave);
};

/*
---------------------- Should I add this instead? ---------------------- 
const { authenticate } = require("../config/jwt.config");

module.exports = (app) => {
    app.get('/api', MenuController.index);
    app.get('/api/menu', MenuController.getAll);
    app.post('/api/menu', authenticate, MenuController.create);
    app.get('/api/menu/:id', MenuController.getOne);
    app.put('/api/menu/:id', MenuController.update);
    app.delete('/api/menu/:id', authenticate,  MenuController.delete);
}
*/
