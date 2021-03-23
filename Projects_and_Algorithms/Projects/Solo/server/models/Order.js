const mongoose = require('mongoose');

const OrderSchema = new mongoose.Schema({
    user: {
        type: String
    },
    pizza: {
        crust: String,
        size: String,
        cheese: String,
        sauce: String,
        toppings: [String]
    },
    sides: {
        type: [String]
    },
    desserts: {
        type: [String]
    },
    drinks: {
        type: [String]
    },
    price: {
        type: Number
    },
    quantity: {
        type: Number
    }
}, { timestamps: true });

const Order = mongoose.model("Order", OrderSchema);

module.exports = Order;