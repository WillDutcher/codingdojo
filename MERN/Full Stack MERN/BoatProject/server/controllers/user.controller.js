const User = require('..models/user.models');
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

// export obj full of methods
module.exports = {
    // user reg will create user
    // Notice that save method will trigger bcrypt hashing in model file
    // the hashing is PRE save
    register: (req, res) => {
        const user = new User(req.body);

        user
            .save()
            .then(() => {
                res.json({ msg: "success!", user: user });
            })
            .catch(err => res.status(400).json(err));
    },

    // validate creds against what is saved in db for this user
    // if successful, send back JWT token that can be used to verify who they are with new reqs
    login(req, res) {
        User.findOne({ email: req.body.email })
            .then(user => {
                if (user === null) {
                    // no user was found in db with that email
                    res.status(400).json({ msg: "Invalid login attempt" });
                } else {
                    // found user so we will need to compare pwds
                    bcrypt
                        .compare(req.body.password, user.password)
                        // then is a successful case; only successfully compared
                        // is NOT meaning given us correct pw!
                        .then(passwordIsValid => {
                            if (passwordIsValid) {
                                // adding a cookie to res obj so client can talk with us
                                res
                                // cookie are a type of metadata and will take 3 pcs of info
                                .cookie(
                                    // key we can refer to in the cookie
                                    "usertoken",
                                    // sign obj that contains user's _id using secret
                                    jwt.sign({ _id: user._id }, process.env.JWT_SECRET),
                                    // options for this cookie
                                    {
                                        httpOnly: true,
                                        // expires is not required
                                        expires: new Date(Date.now() + 900000000),
                                    }
                                )
                                .json({
                                    // this is the json portion of the res to the client; can display below
                                    msg: "success!",
                                    userLogged: {
                                        username: `${ user.firstName } ${ user.lastName }`,
                                    }
                                });
                            } else {
                                res.status(400).json({ msg: "Invalid login attempt" });
                            }
                        })
                        // invalid pw - use generic msg to make it harder to hack
                        .catch(err =>
                            res.status(400).json({ msg: 'Invalid login attempt' })
                        );
                    }
                })
                .catch(err => res.json(err));
    },

    // remove the JWT token completely so cookie is useless
    logout(req, res) {
        res.clearCookie('usertoken');
        res.json({ msg: 'usertoken cookies cleared' });
    },

    // remove the id from token so it is invalid
    // our validation is done looking for the existence of the key, so this will
    // not log you out completely
    logout2(req, res) {
        res
            .cookie("usertoken", jwt.sign({ _id: "" }, process.env.JWT_SECRET), {
                httpOnly: true,
                maxAge: 0
            })
            .json({ msg: "ok "});
    },

    // we can get _id for user back by decoding JWT
    getLoggedInUser(req, res) {
        const decodedJWT = jwt.decode(req.cookies.usertoken, { complete: true});

        // decoded vals are held in 'payload obj'
        // we saved _id as a part of login so we can use it for many things
        User.findById(decodedJWT.payload._id)
            .then(user => res.json(user))
            .catch(err => res.json(err));
    },
};