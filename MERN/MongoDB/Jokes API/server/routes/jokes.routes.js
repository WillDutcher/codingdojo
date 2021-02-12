const JokeController = require("../controllers/jokes.controller");

module.exports = (app) => {
    app.get("/api/jokes", JokeController.getAllJokes);
    app.get("/api/jokes/random", JokeController.getRandomJoke);
    app.get("/api/jokes/:id", JokeController.getOneJoke);
    // app.get("/api/randomjoke", JokeController.getRandomJoke);
    app.post("/api/jokes/new", JokeController.createJoke);
    app.put("/api/jokes/update/:id", JokeController.updateJoke);
    app.delete("/api/jokes/delete/:id", JokeController.deleteJoke);
};