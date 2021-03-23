
const mongoose = require('mongoose');

const SideSchema = new mongoose.Schema({
    name: {
        type: String
    },
    price: {
        type: Number
    }
}, { timestamps: true });

const Side = mongoose.model("Side", SideSchema);

module.exports = Side;