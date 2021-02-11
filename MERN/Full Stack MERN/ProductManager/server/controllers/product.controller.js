const { Product } = require('../models/product.model');

const index = (req, res) => {
    res.json({
        message: "Hello from product.controller.js"
    });
};

const createProduct = (req, res) => {
    const { title, price, desc } = req.body;
    Product.create({
        title,
        price,
        desc
    })
        .then(product => res.json(product))
        .catch(err => res.json(err));
};

module.exports = {
    index,
    createProduct
}