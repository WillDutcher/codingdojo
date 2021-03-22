const userController = require("../controllers/user.controller");

const { authenticate } = require("../config/jwt.config");

module.exports = (app) => {
    app.get('/api/user/getAllUsers', userController.getAllUsers);       // delete later
    app.delete('/api/user/:id', userController.deleteUser);             // delete later
    app.post('/api/user/register', userController.register);
    app.post('/api/user/login', userController.login);
    app.post('/api/user/logout', userController.logout);
    app.get('/api/user/loggedin', authenticate, userController.getLoggedInUser);
};