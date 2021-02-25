const PlayersController = require('../controllers/players.controller');

module.exports = function(app) {
    app.get('/api/players', PlayersController.getAllPlayers);
    app.post('/api/players', PlayersController.createPlayer);
    app.get('/api/players/:id', PlayersController.getOnePlayer);
    app.put('/api/players/:id', PlayersController.updatePlayer);
    app.delete('/api/players/:id', PlayersController.deletePlayer);
};