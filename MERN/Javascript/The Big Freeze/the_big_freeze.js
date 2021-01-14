// frozen array re: Object.freeze()
const groceryList = Object.freeze([
  { "item": "carrots",           "haveIngredient": false },
  { "item": "onions",            "haveIngredient": true  },
  { "item": "celery",            "haveIngredient": false },
  { "item": "cremini mushrooms", "haveIngredient": false },
  { "item": "butter",            "haveIngredient": true  }
]);

const needThyme1 = [ ...groceryList, { "item": "thyme", "haveIngredient": false } ];
// Copy groceryList array, then add an item
console.log(needThyme1);

const needThyme2 = groceryList.concat( [ { "item": "thyme", "haveIngredient": false } ] );
// concat onto the groceryList array with an additional item
console.log(needThyme2);

console.log("Hmm...\n")
const needThyme = [ ...groceryList, { "item": "thyme", "haveIngredient": false } ];
const gotTheThyme = [ ...needThyme.slice(0, 5), { ...needThyme, "haveIngredient": true } ];
console.log(gotTheThyme);

const groceries = ["pearl onions", "cremini mushrooms", "thyme"];
const groceryList2 = groceries.map( item => `<li>${item}</li>` );
console.log(groceryList2);