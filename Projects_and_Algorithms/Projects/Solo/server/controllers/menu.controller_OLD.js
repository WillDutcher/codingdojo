const Menu = require('../models/menu.model');

const getAll = (req, res) => {
    // Get all
    Menu.find()
        .then((allOrders) => {
            console.log(allOrders);
            res.json(allOrders);
        })
        .catch((err) => {
            console.log(`Error in getAll: ${ err }`);
            res.status(400).json(err);
        })
}

const create = (req, res) => {
    // Create an order from menu
    console.log(req.body);
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

const getOne = (req, res) => {
    // Get single menu item
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

const update = (req, res) => {
    // update an order
    console.log(req.params.id);
    console.log(req.body);
    Menu.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    })
        .then((updatedOrder) => {
            console.log(updatedOrder);
            res.json(updatedOrder);
        })
        .catch((err) => {
            console.log(`Error in update: ${ err }`);
            res.status(400).json(err);
        })
};

const remove = (req, res) => {
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

const fave = (req, res) => {
    let id = '6057df4e9494781344bc4221';
    Menu.findById(id)
    .then((faveOrder) => {
            console.log(faveOrder);
            res.json(faveOrder);
        })
        .catch((err) => {
            console.log(`Error in getOrder: ${ err }`);
            res.status(400).json(err);
        })
    // Load fave pizza
    // const fave = {
    //     pizza: {
    //         size: "Large",
    //         crust: "Pan",
    //         cheese: "Extra",
    //         sauce: "Normal",
    //         toppings: {
    //             protein: {
    //                 "ham": true,
    //             },
    //             veggies: {
    //                 "onion": true,
    //                 "greenPepper": true
    //             }
    //         }
    //     }
    // }

    // console.log(fave);
    // Menu.create(fave)
    //     .then((faveOrder) => {
    //         console.log(faveOrder);
    //         res.json(faveOrder);
    //     })
    //     .catch((err) => {
    //         console.log(`Error in faveOrder: ${ err }`);
    //         res.status(400).json(err);
    //     })
};

module.exports= {
    getAll,
    create,
    getOne,
    update,
    remove,
    fave
};