const Book = require('../models/book.model');

const create = (req, res) => {
  const { title, pages } = req.body;
  Book.create({
    title: title,
    numberOfPages: pages
  })
  .then(book => res.json(book))
  .catch(err => res.status(400).json(err))
}

module.exports = {
  create
}
/*
  Our controller is using a different syntax to export our function as a key (create:) in an object
  instead of exporting each individual function independently as we have done before
  You can write as many keys and functions as you would like
*/

// module.exports = {
//   create: (req, res) => {
//     const { title, pages } = req.body;
//     Book.create({
//       title: title,
//       numberOfPages: pages
//     })
//     .then(book => res.json(book))
//     .catch(err => res.status(400).json(err))
//   }
// }

/*
  We are making a 400 response so that our axios.post request will catch it as an error. 
  If we make a request WITHOUT the title or numberOfPages, we will see a response such as below:

  {
    "errors": {
      "title": {
        "message": "Title is required",
        "name": "ValidatorError",
        "properties": {
          "message": "Title is required",
          "type": "required",
          "path": "title"
        },
        "kind": "required",
        "path": "title"
      },
      "numberOfPages": {
        "message": "Pages is required",
        "name": "ValidatorError",
        "properties": {
          "message": "Pages is required",
          "type": "required",
          "path": "numberOfPages"
        },
        "kind": "required",
        "path": "numberOfPages"
      }
    },
    "_message": "Book validation failed",
    "message": "Book validation failed: numberOfPages: Pages is required, title: Title is required",
    "name": "ValidationError"
  }

*/