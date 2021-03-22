const MenuController = require('../controllers/menu.controller');

module.exports = (app) => {
    app.get('/api/menu', MenuController.getMenu);
};