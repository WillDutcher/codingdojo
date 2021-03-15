const Menu = require('../models/menu.model');

const index = (req, res) =>{
    res.json({
        // Simple test to ensure successful connection
        message: "You have successfully connected!"
    });
};

const getAllOrders = (req, res) => {
    // Get all
    Menu.find()
        .then((allOrders) => {
            console.log(allOrders);
            res.json(allOrders);
        })
        .catch((err) => {
            console.log(`Error in getAllOrders: ${ err }`);
            res.status(400).json(err);
        })
}

const createOrder = (req, res) => {
    // Create an order
    Menu.create(req.body)
        .then((newOrder) => {
            console.log(newOrder);
            res.json(newOrder);
        })
        .catch((err) => {
            console.log(`Error in newOrder: ${ err }`);
            res.status(400).json(err);
        })
};

const getOrder = (req, res) => {
    // Get single order
    console.log(req.params.id);
    Menu.findById(req.params.id)
        .then((singleOrder) => {
            console.log(singleOrder);
            res.json(singleOrder);
        })
        .catch((err) => {
            console.log(`Error in getOrder: ${ err }`);
            res.status(400).json(err);
        })
};

const editOrder = (req, res) => {
    // Edit an order
    console.log(req.params.id);
    console.log(req.body);
    Menu.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    })
        .then((editedOrder) => {
            console.log(editedOrder);
            res.json(editedOrder);
        })
        .catch((err) => {
            console.log(`Error in editOrder: ${ err }`);
            res.status(400).json(err);
        })
};

const deleteOrder = (req, res) => {
    // Delete an order
    console.log(req.params.id);
    Menu.findByIdAndRemove(req.params.id)
        .then((removedOrder) => {
            console.log(removedOrder);
            res.json(removedOrder);
        })
        .catch((err) => {
            console.log(`Error in deleteOrder: ${ err }`);
            res.status(400).json(err);
        })
};

module.exports= {
    index,
    getAllOrders,
    createOrder,
    getOrder,
    editOrder,
    deleteOrder
};