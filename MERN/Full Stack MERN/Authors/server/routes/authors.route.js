const AuthorsController = require('../controllers/authors.controller');

module.exports = function(app) {
    app.get('/api', AuthorsController.index);                       // Simple test; remove when complete
    app.get('/api/authors', AuthorsController.getAllAuthors);       // Get all authors
    app.post('/api/authors', AuthorsController.addAuthor);          // Add new author to database
    app.get('/api/authors/:id', AuthorsController.getSingleAuthor); // Get single author's information
    app.put('/api/authors/:id', AuthorsController.editAuthor);      // Edit author by ID
    app.delete('/api/authors/:id', AuthorsController.deleteAuthor); // Delete author
}