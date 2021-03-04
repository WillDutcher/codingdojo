const Athlete = require('../models/athlete.model');

const getAllAthletes = (req, res) => {
    Athlete.find().sort({ name: "ascending" })
        .then((allAthletes) => {
            console.log(allAthletes);
            res.json(allAthletes);
        })
        .catch((err) => {
            console.log(`Error in getAllAthletes: ${ err }`);
            res.status(400).json(err);
        })
};

const createAthlete = (req, res) => {
    console.log(req.body)
    /* Alternative method to pass is:
    
    const { firstName, lastName, sport, team } = req.body
    Athlete.create({
        firstName,
        lastName,
        sport,
        team
    })

    */
    Athlete.create(req.body)
        .then((newAthlete) => {
            console.log(newAthlete);
            res.json(newAthlete);
        })
        .catch((err) => {
            console.log(`Error in createAthlete: ${ err }`);
            res.status(400).json(err);
        })
};

const getOneAthlete = (req, res) => {
    /* Alternative method:

    const { id } = req.params;
    
    */
    console.log(req.params.id);
    Athlete.findById(req.params.id)
        .then(oneAthlete => {
            console.log(oneAthlete);
            res.json(oneAthlete);
        })
        .catch((err) => {
            console.log(`Error in getOneAthlete: ${ err }`);
            res.status(400).json(err);
        })
};

const updateAthlete = (req, res) => {
    console.log(req.params.id);
    console.log(req.body);
    Athlete.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    })
        .then(updatedAthlete => {
            console.log(updatedAthlete);
            res.json(updatedAthlete);
        })
        .catch((err) => {
            console.log(`Error in updateAthlete: ${ err }`);
            res.status(400).json(err);
        })
};

const deleteAthlete = (req, res) => {
    console.log(req.params.id);
    Athlete.findByIdAndDelete(req.params.id)
        .then((deletedAthlete) => {
            console.log(deletedAthlete);
            res.json(deletedAthlete);
        })
        .catch((err) => {
            console.log(`Error in deleteAthlete: ${ err }`);
            res.status(400).json(err);
        })
};

module.exports = {
    getAllAthletes,
    createAthlete,
    getOneAthlete,
    updateAthlete,
    deleteAthlete
}