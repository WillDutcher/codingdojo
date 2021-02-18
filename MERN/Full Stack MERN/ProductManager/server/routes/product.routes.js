const ProductController = require('../controllers/product.controller');
const Product = require('../models/product.model');

module.exports = function(app) {
    app.get('/api', ProductController.index);
    app.post('/api/product', ProductController.createProduct);
    app.get('/api/products', ProductController.getAllProducts);
    app.get('/api/products/:id', ProductController.getProduct);
    app.put('/api/products/:id', ProductController.updateProduct);
}