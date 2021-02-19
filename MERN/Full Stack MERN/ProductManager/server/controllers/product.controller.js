const Product = require('../models/product.model');

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

const getAllProducts = (req, res) => {
    Product.find({})
        .then(products => res.json(products))
        .catch(err => res.json(err));
};

const getProduct = (req, res) => {
    Product.findOne({ _id: req.params.id })
        .then(product => res.json(product))
        .catch(err => res.json(err));
};

const updateProduct = (req, res) => {
    Product.findOneAndUpdate({ _id: req.params.id }, req.body, { new: true })
        .then(updatedProduct => res.json(updatedProduct))
        .catch(err => res.json(err));
};

const deleteProduct = (req, res) => {
    Product.deleteOne({ _id: req.params.id })
        .then(deleteConfirmation => res.json(deleteConfirmation))
        .catch(err => res.json(err))
};

module.exports = {
    index,
    createProduct,
    getAllProducts,
    getProduct,
    updateProduct,
    deleteProduct
}