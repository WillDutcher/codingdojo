const mongoose = require('mongoose');

const AthleteSchema = new mongoose.Schema({
    firstName: {
        type: String,
        required: [ true, "Please enter first name" ],
        minlength: [ 2, "First name must be at least two characters in length" ]
    },
    lastName: {
        type: String,
        required: [ true, "Please enter last name" ],
        minlength: [ 2, "Last name must be at least two characters in length" ]
    },
    sport: {
        type: String,
        minlength: [ 2, "Sport must be at least two characters in length" ]
    },
    team: {
        type: String,
        minlength: [ 2, "Team must be at least two characters in length" ]
    }
}, { timestamps: true });

module.exports = mongoose.model('Athlete', AthleteSchema);