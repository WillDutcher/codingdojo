const jwt = require("jsonwebtoken");

    // This file is used as Midleware to authenticate a user
    // Before we pass the req on to the controller, we'll authenticate req
module.exports = {
    authenticate(req, res, next) {
        // verify we're authorized to view route
        jwt.verify (
            // token passed from client to us; proof of being authenticated
            req.cookies.usertoken,
            // key for validation (can be anything we want)
            process.env.JWT_SECRET,
            // store info in payload, if we want
            (err, payload) => {
                // if we do NOT pass check, send 401 Unauthorized res
                if (err) {
                    res.status(401).json({ verified: false });
                } else {
                    // if valid, proceed to next / callback function
                    // continue us down process of accessing resources we
                    // are authorized to access
                    next();
                    // go to controller
                }
            }
        );
    }
}