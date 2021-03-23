
const mongoose = require('mongoose');

const ToppingSchema = new mongoose.Schema({
    name: {
        type: String
    },
    price: {
        type: Number
    }
}, { timestamps: true });

const Topping = mongoose.model("Topping", ToppingSchema);

module.exports = Topping;