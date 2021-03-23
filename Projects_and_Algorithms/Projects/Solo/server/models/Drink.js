
const mongoose = require('mongoose');

const DrinkSchema = new mongoose.Schema({
    name: {
        type: String
    },
    price: {
        type: Number
    }
}, { timestamps: true });

const Drink = mongoose.model("Drink", DrinkSchema);

module.exports = Drink;