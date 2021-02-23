const mongoose = require('mongoose');

const AuthorSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [ true, "You must enter a name." ],
        minlength: [ 3, "The name must be at least 3 characters in length." ]
    }
}, { timestamps: true });

/* Reminder: Collection names in mongoose are lowercase and plural based on the string of 'author' */
module.exports = mongoose.model('Author', AuthorSchema);