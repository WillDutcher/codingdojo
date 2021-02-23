const mongoose = require('mongoose');
const db_name = 'authors';

mongoose.connect(`mongodb://localhost/${ db_name }`, {
    useNewUrlParser: true,
    useUnifiedTopology: true
})
    .then(() => console.log(`You are now connected to the ${ db_name } database`))
    .catch((err) => console.log(`Something went wrong when attempting to connect to the ${ db_name } database: ${ err }`));