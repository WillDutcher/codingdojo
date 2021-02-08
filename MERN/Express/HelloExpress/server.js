const express = require("express");
const app = express();

// req is short for request
// res is short for response
app.get("/api", (req, res) => {
  res.send("Our express api server is now sending this over to the browser");
});

app.get("/hoops", (req, res) => {
  res.send("Now I'm sending data to a '/hoops' path!");
});

app.get("/will", (req, res) => {
  res.send("Will made this site.");
});

app.get("/api/users", (req, res) => {
  const users= [
    { fname: "Henry", lname: "Baker", email: "hBaker@email.com" },
    { fname: "Samtron", lname: "NONE", email: "samtron@email.com" },
    { fname: "Jim", lname: "Baller", email: "jBaller@email.com" },
    { fname: "Janette", lname: "Kiwi", email: "jKiwi@email.com" },
    { fname: "Olaf", lname: "Otis", email: "oOtis@email.com" }
  ];
  return res.json({ allUsers: users });
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.post("/api/users/new", (req, res) => {
  console.log(req.body);
  // req.body will have any form content sent from React
  // we would use req.body to insert a new user in the database
  const newUser = req.body;
  // then return the new user after creation
  return res.status(201).json({ newUser: newUser });
});

/** If we wanted to retrieve a user with a specific ID, we would
 *  use the below syntax in our URL string **/
app.get("/api/users/:whateverIWanted", (req, res) => {
  // Whatever you typed after the colon in the url
  // will become the "KEY" in the req.params object
  console.log(req.params.whateverIWanted);
  // We can also choose to deconstruct the param object like so:
  const { whateverIWanted } = req.params;
  console.log(whateverIWanted);
});

app.put("/api/users/update/:id", (req, res) => {
  // Here we would update the user using the id from the params object
  // and the data from the req.body object
  console.log(req.params.id);
  console.log(req.body);
  // **** UPDATE USER HERE ****//
});

app.delete("/api/users/delete/:id", (req, res) => {
  // Here we would delete the user using the id from the params object
  console.log(req.params.id);
});


const server = app.listen(8000, () =>
  console.log(`Server is locked and loaded on port ${server.address().port}!`)
);
