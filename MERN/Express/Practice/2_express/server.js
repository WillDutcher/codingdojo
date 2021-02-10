const { response } = require('express');
const express = require('express');
const app = express();
const port = 8000;
const faker = require('faker');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

class User {
    constructor() {
        this.name = faker.name.findName();
        this.word = faker.random.word();
    }
}

app.get("/api/", (req, res) => {
    res.send("I am a response from res.send().")
});

app.post("/api/", (req, res) => {
    console.log(req.body);
    return res.json(req.body);
});

app.get("/api/faker/", (req, res) => {
    // const name = faker.name.findName();
    // res.send("Hello, " + name + "!");
    const user = new User();
    // res.send("Hello, " + user.name + "! You are a " + user.word + "!");
    res.send(user);
})

// const name = faker.name.findName();

app.listen(port, () => console.log(`The server is currently running on port ${port}`));