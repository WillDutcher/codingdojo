const MenuController = require('../controllers/menu.controller');

module.exports = function(app) {
    app.get('/api', MenuController.index);
    app.get('/api/orders', MenuController.getAllOrders);
    app.post('/api/orders', MenuController.createOrder);
    app.get('/api/orders/:id', MenuController.getOrder);
    app.put('/api/orders/:id', MenuController.editOrder);
    app.delete('/api/orders/:id', MenuController.deleteOrder);
};