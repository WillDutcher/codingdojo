const Product = require('../models/products.model');

const index = (req, res) => {
    // Test that http://localhost:8000/api is at least reachable
    res.json({
        message: "Hello from the products.controller.js file!"
    });
};

const getAllProducts = (req, res) => {
    // Get all products
    Product.find()
        .then((allProducts) => {
            console.log(allProducts);
            res.json(allProducts);
        })
        .catch((err) => {
            console.log(`Error in getAllProducts: ${err}`);
            res.json(err);
        })
};

const createProduct = (req, res) => {
    // Create a new product
    Product.create(req.body)
        .then((newProduct) => {
            console.log(newProduct);
            res.json(newProduct);
        })
        .catch((err) => {
            console.log(`Error in createProduct: ${err}`);
            res.json(err);
        })
};

const getOneProduct = (req, res) => {
    // Get a single product by ID
    console.log(req.params.id);
    Product.findById(req.params.id)
        .then((oneProduct) => {
            console.log(oneProduct);
            res.json(oneProduct);
        })
        .catch((err) => {
            console.log(`Error in getOneProduct: ${err}`);
            res.json(err);
        })
};

const updateProduct = (req, res) => {
    // Update a product
    console.log(req.params.id);
    console.log(req.body);
    Product.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    })
        .then((updatedProduct) => {
            console.log(updatedProduct);
            res.json(updatedProduct);
        })
        .catch((err) => {
            console.log(`Error in updateProduct: ${err}`);
            res.json(err);
        })
};

const deleteProduct = (req, res) => {
    // Delete a product by ID
    console.log(req.params.id);
    Product.findByIdAndRemove(req.params.id)
        .then((removedProduct) => {
            console.log(removedProduct);
            res.json(removedProduct);
        })
        .catch((err) => {
            console.log(`Error in deleteProduct: ${err}`);
            res.json(err);
        })
};

module.exports = {
    index,
    getAllProducts,
    createProduct,
    getOneProduct,
    updateProduct,
    deleteProduct
}