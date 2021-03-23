const mongoose = require('mongoose');

const CheeseSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [ true, "Please select amount of cheese" ]
    }
}, { timestamps: true });

const Cheese = mongoose.model("Cheese", CheeseSchema);

module.exports = Cheese;