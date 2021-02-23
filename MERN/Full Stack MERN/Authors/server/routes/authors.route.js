const AuthorsController = require('../controllers/authors.controller');

module.exports = function(app) {
    app.post('/api/authors', AuthorsController.addAuthor);          // Add new author to database
    app.get('/api/authors', AuthorsController.getAllAuthors);       // Get all authors
    app.get('/api/authors/:id', AuthorsController.getSingleAuthor); // Get single author's information
    app.put('/api/authors/:id', AuthorsController.editAuthor);      // Edit author by ID
    app.delete('/api/authors/:id', AuthorsController.deleteAuthor); // Delete author
}