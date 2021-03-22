const User = require('../models/user.model');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const getAllUsers = (req, res) => {
    User.find()
        .then((allUsers) => {
            console.log(allUsers);
            res.json(allUsers);
        })
        .catch((err) => {
            console.log(`Error in allUsers: ${ err }`);
            res.status(400).json(err);
        })
}

const deleteUser = (req, res) => {
    // Delete a user
    console.log(req.params.id);
    User.findByIdAndRemove(req.params.id)
        .then((removedUser) => {
            console.log(removedUser);
            res.json(removedUser);
        })
        .catch((err) => {
            console.log(`Error in removedUser: ${ err }`);
            res.status(400).json(err);
        })
};

const register = (req, res) => {
    const user = new User(req.body);
    console.log(req.body)
    User.findOne({ email: req.body.email })
    .then(foundUser => {
        if (foundUser !== null) {
            // Found dup email
            console.log(res);
            res.status(400).json({
                "errors": {
                    "email": {
                        "name": "ValidatorError",
                        "message": "Email already in use"
                    }
                }
            });
            // res.json(user);
            // res.status(200).json({ msg: "Invalid login attempt" });
        } else {
            // allow to continue
            user
                .save()
                .then(() => {
                    res
                    .cookie(
                        "usertoken",
                        jwt.sign({ _id: user._id }, process.env.JWT_SECRET),
                        {
                            httpOnly: true,
                            expires: new Date(Date.now() + 7200000),
                        }
                    )
                    .json({ 
                        msg: "success!",
                        userLogged: {
                            username: `${user.firstName} ${user.lastName}`,
                            hasAccount: true
                        }
                    });
                    // res.json({ msg: "User has successfully registered", user: user });
                })
                .catch((err) => {
                    res.status(400).json(err);
                    console.log(err);
                });
        }
    })
    .catch((err) => {
        console.log(err);
        res.status(400).json(err);
    })
};

const login = (req, res) => {
    User.findOne({ email: req.body.email })
    .then(user => {
        if (user === null) {
            res.status(400).json({ msg: "Invalid login attempt" });
        } else {
            bcrypt
            .compare(req.body.password, user.password)
            .then(passwordIsValid => {
                if (passwordIsValid) {
                    res
                    .cookie(
                        "usertoken",
                        jwt.sign({ _id: user._id }, process.env.JWT_SECRET),
                        {
                            httpOnly: true,
                            expires: new Date(Date.now() + 7200000),
                        }
                    )
                    .json({ 
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
            .catch(err =>
                res.status(400).json({ msg: "Invalid login attempt" })
            );
        }
    })
    .catch(err => res.json(err));
};

const logout = (req, res) => {
    res.clearCookie("usertoken");
    res.json({
        msg: "usertoken cookie cleared"
    });
};

const getLoggedInUser = (req, res) => {
    const decodedJWT = jwt.decode(req.cookies.usertoken, { complete: true });
    User.findById(decodedJWT.payload._id)
        .then((user) => {
            console.log(user)
            res.json(user)
        })
        .catch((err) => {
            console.log(err);
            res.json(err);
        })
};

module.exports= {
    getAllUsers,
    deleteUser,
    register,
    login,
    logout,
    getLoggedInUser
};