const ProductsController = require('../controllers/products.controller');
// const Product = require('../models/products.model');

module.exports = function(app) {
    app.get('/api', ProductsController.index);
    app.get('/api/products', ProductsController.getAllProducts);
    app.post('/api/products', ProductsController.createProduct);
    app.get('/api/products/:id', ProductsController.getOneProduct);
    app.put('/api/products/:id', ProductsController.updateProduct);
    app.delete('/api/products/:id', ProductsController.deleteProduct);
}