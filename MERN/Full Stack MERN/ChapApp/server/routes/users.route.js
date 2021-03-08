const UserController = require('../controllers/users.controller');

module.exports = function(app) {
    app.get('/api/', UserController.allUsers);
    app.post('/api/', UserController.createUser);
}