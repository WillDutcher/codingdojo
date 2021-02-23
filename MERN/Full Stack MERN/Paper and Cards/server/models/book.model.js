const mongoose = require('mongoose');

const BookSchema = new mongoose.Schema({
    title: {
        type: String,
        required: [ true, "Title is required" ]
    },
    numberOfPages: {
        type: Number,
        required: [ true, "Number of Pages is required" ]
    }
}, { timestamps: true });

module.exports = mongoose.model('Book', BookSchema);