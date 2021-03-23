const Cheese = require("../models/Cheese");
const Crust = require("../models/Crust");
const Size = require("../models/Size");
const Sauce = require("../models/Sauce");
const Topping = require("../models/Topping");
const Side = require("../models/Side");
const Dessert = require("../models/Dessert");
const Drink = require("../models/Drink");

const loadData = (req, res) => {
  const cheeses = ["Light", "Normal", "Extra", "Double"];
  const crusts = ["Personal", "Small", "Medium", "Large", "Extra Large"];
  const sizes = ["Normal", "Thin", "Pan", "Stuffed"];
  const sauces = ["Light", "Normal", "Extra", "Double"];
  saveToModel(cheeses, Cheese);
  saveToModel(crusts, Crust);
  saveToModel(sizes, Size);
  saveToModel(sauces, Sauce);

  const toppings = [
    "pepperoni",
    "sausage",
    "ham",
    "chicken",
    "bacon",
    "impossibleMeat",
    "onion",
    "mushroom",
    "greenPepper",
    "olive",
    "jalapeno",
    "pineapple",
  ];
  const toppingsPrice = 2;

  const sides = ["breadsticks", "cheesesticks"];
  const desserts = ["tiramasu", "canoli"];
  const drinks = [
    "Coke",
    "Diet Coke",
    "Dr. Pepper",
    "Diet Dr. Pepper",
    "Sprite",
    "Fanta Orange",
    "Barq's Root Beer",
  ];
  const otherPrice = 3;

  saveToModel2(sides, Side, otherPrice);
  saveToModel2(desserts, Dessert, otherPrice);
  saveToModel2(drinks, Drink, otherPrice);
  saveToModel2(toppings, Topping, toppingsPrice);

  res.send(200);
};

const saveToModel = (l, model) => {
  l.forEach((x) => {
    model.create({ name: x });
  });
  // .then(console.log)
  // .catch(console.log)
};

const saveToModel2 = (l, model, price) => {
  l.forEach((x) => {
    model.create({ name: x, price: price });
  });
};

module.exports = {
  loadData,
};
