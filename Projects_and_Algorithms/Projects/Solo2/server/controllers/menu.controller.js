const Menu = require('../models/menu.model');

const getMenu = (req, res) => {
    // Get all
    Menu.find()
        .then((menu) => {
            console.log(menu);
            res.json(menu);
        })
        .catch((err) => {
            console.log(`Error in getMenu: ${ err }`);
            res.status(400).json(err);
        })
}

module.exports= {
    getMenu
};