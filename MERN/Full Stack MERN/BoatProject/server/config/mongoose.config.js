const mongoose = require('mongoose');
// const db_name = 'skiffs'

module.exports = (db_name) => {
    mongoose.connect(`mongodb://localhost/${db_name}`, {
        useNewUrlParser: true,
        useUnifiedTopology: true
    })
        .then(() => console.log(`You are connected to the ${db_name} database`))
        .catch((err) => console.log(`Something went wrong connecting to the ${db_name} database: ${err}`));
}
