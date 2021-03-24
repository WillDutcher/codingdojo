const userController = require("../controllers/user.controller");

// add in JWT middleware func "authenticate" - we named it in jwt.config.js
const { authenticate } = require("../config/jwt.config");

module.exports = (app) => {
    app.post("/api/user/register", userController.register);
    app.post("/api/user/login", userController.login);
    app.post("/api/user/logout", userController.logout);

    // this route has to be authenticated
    // if fail, return error; success - next method called from userController
    app.get("/api/user/loggedin", authenticate, userController.getLoggedInUser);
};