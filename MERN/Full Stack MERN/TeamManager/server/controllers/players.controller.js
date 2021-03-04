const Player = require('../models/players.model');

const getAllPlayers = (req, res) => {
    Player.find({}).sort({ position: "ascending", name: "ascending" })
        .then((allPlayers) => {
            console.log(allPlayers);
            res.json(allPlayers);
        })
        .catch((err) => {
            console.log(`Error in getAllPlayers: ${ err }`);
            res.status(400).json(err);
        })
};

const createPlayer = (req, res) => {
    console.log(req.body)
    Player.create(req.body)
        .then((newPlayer) => {
            console.log(newPlayer);
            res.json(newPlayer);
        })
        .catch((err) => {
            console.log(`Error in createPlayer: ${ err }`);
            res.status(400).json(err);
        })
};

const getOnePlayer = (req, res) => {
    console.log(req.params.id);
    Player.findById(req.params.id)
        .then(onePlayer => {
            console.log(onePlayer);
            res.json(onePlayer);
        })
        .catch((err) => {
            console.log(`Error in getOnePlayer: ${ err }`);
            res.status(400).json(err);
        })
};

const updatePlayer = (req, res) => {
    console.log(req.params.id);
    console.log(req.body);
    Player.findByIdAndUpdate(req.params.id, req.body, {
        new: true,
        runValidators: true
    })
        .then(updatedPlayer => {
            console.log(updatedPlayer);
            res.json(updatedPlayer);
        })
        .catch((err) => {
            console.log(`Error in updatePlayer: ${ err }`);
            res.status(400).json(err);
        })
};

const deletePlayer = (req, res) => {
    console.log(req.params.id);
    Player.findByIdAndDelete(req.params.id)
        .then((deletedPlayer) => {
            console.log(deletedPlayer);
            res.json(deletedPlayer);
        })
        .catch((err) => {
            console.log(`Error in deletePlayer: ${ err }`);
            res.status(400).json(err);
        })
};

module.exports = {
    getAllPlayers,
    createPlayer,
    getOnePlayer,
    updatePlayer,
    deletePlayer
}