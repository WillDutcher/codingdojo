const User = require("../models/user.model");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

// export an object that is full of methods
module.exports = {
  // user registration will create the user
  //    Notice that our save method will trigger the bcrypt hashing in the model file
  //    the hashing is PRE save
  register: (req, res) => {
    const user = new User(req.body);

    user
      .save()
      .then(() => {
        res.json({ msg: "success!", user: user });
      })
      .catch(err => res.status(400).json(err));
  },

  // validate the credentials against what is saved in the DB for this user
  //    if we are successful, we will send back a JWT token that can be
  //    used to verify who they are with new requests
  login(req, res) {
    User.findOne({ email: req.body.email })
      .then(user => {
        if (user === null) {
          // no user was found in the DB with that email address
          res.status(400).json({ msg: "Invalid login attempt" });
        } else {
          // we found the user and so we will need to compare the passwords
          bcrypt
            .compare(req.body.password, user.password)
            // .then is a successful case - we have ONLY successfully compared
            //    this is NOT meaning the have given us the correct password
            .then(passwordIsValid => {
              if (passwordIsValid) {
                // adding a cookie to the response object so the client can talk with us
                res
                  // cookie are a type of metadata and will take 3 pieces of information
                  .cookie(
                    // key that we can refer to in the cookie
                    "usertoken",
                    // sign the object that contains the user's _id using the secret
                    jwt.sign({ _id: user._id }, process.env.JWT_SECRET),
                    // options for this cookie
                    {
                      httpOnly: true,
                      // expires is not required
                      expires: new Date(Date.now() + 900000000),
                    }
                  )
                  .json({ 
                    // this is the json portion of the response to the client
                    //    we can display this
                    msg: "success!",
                    userLogged: {
                      username: `${user.firstName} ${user.lastName}`,
                      hasAccount: true
                    }
                  });
              } else {
                res.status(400).json({ msg: "Invalid login attempt" });
              }
            })
            // invalid password - use a generic message to make it harder to hack
            .catch(err =>
              res.status(400).json({ msg: "Invalid login attempt" })
            );
        }
      })
      .catch(err => res.json(err));
  },

  // remove the JWT token completely so the cookie is useless
  logout(req, res) {
    res.clearCookie("usertoken");
    res.json({ msg: "usertoken cookie cleared" });
  },

  // remove the id from the token so it is invalid
  //    our validation is done looking for the existence of the key, so this will
  //    not log you out completely

  /* TRY TO REMOVE THIS ONE BELOW */
  logout2(req, res) {
    res
      .cookie("usertoken", jwt.sign({ _id: "" }, process.env.JWT_SECRET), {
        httpOnly: true,
        maxAge: 0
      })
      .json({ msg: "ok" });
  },
  /* TRY TO REMOVE THIS ONE ABOVE */

  // we can get the _id for this user back by decoding the JWT
  getLoggedInUser(req, res) {
    const decodedJWT = jwt.decode(req.cookies.usertoken, { complete: true });
    console.log("In getLoggedInUser")

    // the decoded values are held in a "payload object"
    //    we saved the _id as a part of login so we can use it for many
    //    things!
    User.findById(decodedJWT.payload._id)
      .then(user => res.json(user))
      .catch(err => res.json(err));
  },
};
