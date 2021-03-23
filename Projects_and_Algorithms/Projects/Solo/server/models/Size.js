const mongoose = require('mongoose');

const SizeSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [ true, "Please select pizza size" ]
    }
}, { timestamps: true });

const Size = mongoose.model("Size", SizeSchema);

module.exports = Size;