const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
    aliasName: {
        type: String,
        required: [ true, 'Please enter a chat alias name' ],
        minlength: [ 1, 'Alias name must be at least 1 character long' ]
    }
}, { timestamps: true });

module.exports = mongoose.model('User', UserSchema);