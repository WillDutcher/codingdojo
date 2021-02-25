const mongoose = require('mongoose');

const PlayerSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [ true, "Please enter player name" ],
        minlength: [ 2, "Player name must be at least two characters in length" ]
    },
    position: {
        type: String,
        required: [ true, "Please select your preferred position" ],
        enum: [ 'QB', 'RB', 'TE', 'WR', 'OL', 'DL', 'LB', 'CB', 'S', 'K', 'P', 'Coach' ]
    },
    status: [ "unknown", "unknown", "unknown" ]
}, { timestamps: true });

module.exports = mongoose.model('Player', PlayerSchema);