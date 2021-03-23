const mongoose = require('mongoose');

const CrustSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [ true, "Please select type of crust" ]
    }
}, { timestamps: true });

const Crust = mongoose.model("Crust", CrustSchema);

module.exports = Crust;