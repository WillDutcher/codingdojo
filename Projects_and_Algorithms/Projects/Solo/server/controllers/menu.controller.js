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
};

module.exports = {
  getAll,
};
