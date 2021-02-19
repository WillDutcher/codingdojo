const mongoose = require('mongoose');

const ProductSchema = new mongoose.Schema({
    title: {
        type: String,
        required: [ true, "You must enter a title." ],
        minlength: [2, "Your title must have at least 3 characters." ]
    },
    price: {
        type: Number,
        required: [ true, "You must enter a price." ]
    },
    desc: {
        type: String,
        required: [ true, "You must enter an item description." ],
        minlength: [ 5, "Your description must be at least 5 characters in length." ]
    }
}, { timestamps: true });

/* Note: Collection names are all lowercase and plural, based on the string of 'product' */
module.exports = mongoose.model('Product', ProductSchema);