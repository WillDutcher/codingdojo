require("dotenv").config();                                 // run dotenv then runs config method

const express = require('express');
const app = express();
const cors = require('cors');
const cookieParser = require('cookie-parser');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors({
  credentials: true,                                        // willing to accept credentials built in to req
  origin: "http://localhost:3000",                          // react server
}));
app.use(cookieParser());                                    // use cookieParser

// require('./config/mongoose.config');
require('./config/mongoose.config')(process.env.DB_NAME);

require('./routes/skiffs.route')(app);
require('./routes/user.routes')(app);

app.listen(process.env.DB_PORT, () => console.log(`Listening on port: ${process.env.DB_PORT}`));
