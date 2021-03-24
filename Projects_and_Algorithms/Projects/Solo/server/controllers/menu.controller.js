<<<<<<< HEAD
const Cheese = require("../models/Cheese");
const Crust = require("../models/Crust");
const Size = require("../models/Size");
const Sauce = require("../models/Sauce");
const Topping = require("../models/Topping");
const Side = require("../models/Side");
const Dessert = require("../models/Dessert");
const Drink = require("../models/Drink");

const getAll = async (req, res) => {
  // Get all menu items
  const cheeses = await Cheese.find();
  const crusts = await Crust.find();
  const sizes = await Size.find();
  const sauces = await Sauce.find();
  const toppings = await Topping.find();
  const sides = await Side.find();
  const desserts = await Dessert.find();
  const drinks = await Drink.find();
  res.send({
    cheeses,
    crusts,
    sizes,
    sauces,
    toppings,
    sides,
    desserts,
    drinks,
  });
=======
const Menu = require('../models/menu.model');

const index = (req, res) =>{
    res.json({
        // Simple test to ensure successful connection
        message: "You have successfully connected!"
    });
};

const getAll = (req, res) => {
    // Get all
    Menu.find()
        .then((allOrders) => {
            console.log(allOrders);
            res.json(allOrders);
        })
        .catch((err) => {
            console.log(`Error in getAll: ${ err }`);
            res.status(400).json(err);
        })
}

const create = (req, res) => {
    // Create an order from menu
    console.log(req.body);
    Menu.create(req.body)
        .then((newOrder) => {
            console.log(newOrder);
            res.json(newOrder);
        })
        .catch((err) => {
            console.log(`Error in newOrder: ${ err }`);
            res.status(400).json(err);
        })
};

const getOne = async (req, res) => {
    // Get single menu item
    console.log(req.params.id);
    Menu.findById(req.params.id)
        .then((singleOrder) => {
            console.log(singleOrder);
            res.json(singleOrder);
        })
        .catch((err) => {
            console.log(`Error in getOrder: ${ err }`);
            res.status(400).json(err);
        })
>>>>>>> 2b7e7b94b3973307276124e85f29a017348ca8d8
};

module.exports = {
  getAll,
};
