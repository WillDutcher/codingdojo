const AdminController = require('../controllers/admin.controller');

module.exports = (app) => {
    app.get('/api/admin/load', AdminController.loadData);
};