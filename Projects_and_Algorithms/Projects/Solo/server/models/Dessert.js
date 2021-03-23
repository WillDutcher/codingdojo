
const mongoose = require('mongoose');

const DessertSchema = new mongoose.Schema({
    name: {
        type: String
    },
    price: {
        type: Number
    }
}, { timestamps: true });

const Dessert = mongoose.model("Desserts", DessertSchema);

module.exports = Dessert;