const Person = require('../models/person.model');

const index = (req, res) => {
    res.json({
        message: "Hello World!"
    });
};

const createPerson = (req, res) => {
    const { firstName, lastName } = req.body;
    Person.create({
        firstName,
        lastName
    })
        .then(person => res.json(person))
        .catch(err => res.json(err));
};

const getAllPeople = (req, res) => {
    Person.find({})
        .then(persons => res.json(persons))
        .catch(err => res.json(err));
};

const getPerson = (req, res) => {
    Person.findOne({ _id: req.params.id })
        .then(person => res.json(person))
        .catch(err => res.json(err));
};

const updatePerson = (req, res) => {
    Person.findOneAndUpdate({ _id: req.params.id }, req.body, { new: true })
        .then(updatedPerson => res.json(updatedPerson))
        .catch(err => res.json(err));
};

const deletePerson = (req, res) => {
    Person.deleteOne({ _id: req.params.id })
        .then(deleteConfirmation => res.json(deleteConfirmation))
        .catch(err => res.json(err))
};

module.exports = {
    index,
    createPerson,
    getAllPeople,
    getPerson,
    updatePerson,
    deletePerson
}


// module.exports.index = (req, res) => {
//     res.json({
//         message: "Hello World"
//     });
// };

// module.exports.createPerson = (req, res) => {
//     const { firstName, lastName } = req.body;
//     Person.create({
//         firstName,
//         lastName
//     })
//         .then(person => res.json(person))
//         .catch(err => res.json(err));
// }
