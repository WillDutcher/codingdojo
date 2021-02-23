const Author = require('../models/authors.model');

const addAuthor = (req, res) => {
    Author.create(req.body)
        .then((authorAdded) => {
            console.log(authorAdded);
            res.json(authorAdded);
        })
        .catch((err) => {
            console.log(`Error in addAuthor: ${ err }`);
            res.status(400).json(err);
        })
};

const getAllAuthors = (req, res) => {
    Author.find({}).sort({name: 1})
        .then((allAuthors) => {
            console.log(allAuthors);
            res.json(allAuthors);
        })
        .catch((err) => {
            console.log(`Error in getAllAuthors: ${ err }`);
            res.status(400).json(err);
        })
};

const getSingleAuthor = (req, res) => {
    console.log(req.params.id);
    Author.findById(req.params.id)
        .then((foundAuthor) => {
            console.log(foundAuthor);
            res.json(foundAuthor);
        })
        .catch((err) => {
            console.log(`Error in getSingleAuthor: ${ err }`);
            res.status(400).json(err);
        })
};

const editAuthor = (req, res) => {
    console.log(req.params.id);
    console.log(req.body);
    Author.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    })
        .then((editedAuthor) => {
            console.log(editedAuthor);
            res.json(editedAuthor);
        })
        .catch((err) => {
            console.log(`Error in editAuthor: ${ err }`);
            res.status(400).json(err);
        })
};

const deleteAuthor = (req, res) => {
    console.log(req.params.id);
    Author.findByIdAndRemove(req.params.id)
        .then((deletedAuthor) => {
            console.log(deletedAuthor);
            res.json(deletedAuthor);
        })
        .catch((err) => {
            console.log(`Error in deleteAuthor: ${ err } `);
            res.status(400).json(err);
        })
}

/*


*/

module.exports = {
    addAuthor,
    getAllAuthors,
    getSingleAuthor,
    editAuthor,
    deleteAuthor
}