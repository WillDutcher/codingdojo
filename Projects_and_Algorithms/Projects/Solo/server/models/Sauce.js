const mongoose = require('mongoose');

const SauceSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [ true, "Please select type of sauce" ]
    }
}, { timestamps: true });

const Sauce = mongoose.model("Sauce", SauceSchema);

module.exports = Sauce;