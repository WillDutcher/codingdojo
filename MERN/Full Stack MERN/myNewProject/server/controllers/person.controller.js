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

module.exports = {
    index,
    createPerson,
    getAllPeople,
    getPerson
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
