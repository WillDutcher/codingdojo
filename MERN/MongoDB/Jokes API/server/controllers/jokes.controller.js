const Joke = require("../models/jokes.model");

module.exports.getAllJokes = (req, res) => {
    console.log("getAllJokes being called");
    Joke.find()
        .then(allJokes => res.json({ jokes: allJokes }))
        .catch(err => res.json({ message: "Something went wrong", error: err}));
};

module.exports.getOneJoke = (req, res) => {
    console.log("getOneJoke being called with id: " + req.params.id);
    // Joke.findById({ _id: req.params._id })
    Joke.findOne({ _id: req.params.id })
        .then(oneJoke => res.json({ joke: oneJoke }))
        .catch(err => res.json({ message: "Something went wrong", error: err}));
};

module.exports.getRandomJoke = (req, res) => {
    console.log("getRandomJoke being called");
    Joke.count({}, function(err, count) {
        if (err) {
            console.log("Error on trying to obtain count");
        } else {
            console.log("Count: " + count)
        }
        var random = Math.floor(Math.random() * count)
        Joke.findOne().skip(random).exec((err, result) => {
            if (err) {
                return res.json(err)
            }
            return res.json(result);
        })
    })
}

// module.exports.getRandomJoke = (req, res) => {
//     console.log("getRandomJoke being called");
//     Joke.count({}, function (err, count) {
//         if (err) {
//             console.log("ERROR");
//         } else {
//             console.log("There are %d docs", count);
//         }
//         var random = Math.floor(Math.random() * count);
//         console.log(random);
//         Joke.findOne().skip(random).exec((err, result) => {
//             if (err) {
//                 return res.json(err)
//             }
//             return res.json({random_joke: result})
//         })
//     })
// };

module.exports.createJoke = (req, res) => {
    console.log("createJoke being called");
    Joke.create(req.body)
        .then(newJoke => res.json({ joke: newJoke }))
        .catch(err => res.json({ message: "Something went wrong", error: err}));
};

module.exports.updateJoke = (req, res) => {
    console.log("updateJoke being called with id: " + req.params.id);
    Joke.findOneAndUpdate({ _id: req.params.id }, req.body, { new: true })
        .then(updatedJoke => res.json({ joke: updatedJoke }))
        .catch(err => res.json({ message: "Something went wrong", error: err}));
};

module.exports.deleteJoke = (req, res) => {
    console.log("deleteJoke being called with id: " + req.params.id);
    Joke.deleteOne({ _id: req.params.id })
        .then(result => res.json({ result: result }))
        .catch(err => res.json({ message: "Something went wrong", error: err}));
};