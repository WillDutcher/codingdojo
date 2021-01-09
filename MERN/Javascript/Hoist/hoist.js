// GIVEN
// console.log(example);
// var example = "I'm the example!";

// AFTER HOISTING BY THE INTERPRETER
// var example;
// console.log(example); // logs undefined
// example = "I'm the example!";

// --------------------------------------------------------

// 1
// BEFORE
// console.log(hello);                                   
// var hello = 'world';                                 

// AFTER
// var hello;
// console.log(hello); // logs undefined
// hello = 'world';

// --------------------------------------------------------

// 2
// BEFORE
// var needle = 'haystack';
// test();
// function test() {
//     var needle = 'magnet';
//     console.log(needle);
// }

// AFTER
// var needle;
// function test() {
//     var needle;
//     needle = 'magnet';
//     console.log(needle);
// }
// test();  // logs  'magnet'

// --------------------------------------------------------

// 3
// BEFORE
// var brendan = 'super cool';
// function print(){
//     brendan = 'only okay';
//     console.log(brendan);
// }
// console.log(brendan);

// AFTER
// var brendan;
// function print() {
//      brendan = 'only okay';
//      console.log(brendan);
// };
// brendan = 'super cool';
// console.log(brendan); // logs 'super cool'

// --------------------------------------------------------

// 4
// BEFORE
// var food = 'chicken';
// console.log(food);
// eat();
// function eat(){
//     food = 'half-chicken';
//     console.log(food);
//     var food = 'gone';
// }

// AFTER
// var food;
// function eat() {
//     var food;
//     food = 'half-chicken';
//     console.log(food);
//     food = 'gone';
// }
// food = 'chicken';
// console.log(food); // logs 'chicken'
// eat(); // logs 'half-chicken'

// --------------------------------------------------------

// 5
// BEFORE
// mean();
// console.log(food);
// var mean = function() {
//     food = "chicken";
//     console.log(food);
//     var food = "fish";
//     console.log(food);
// }
// console.log(food);

// AFTER
// var mean;
// mean = function() {
//     var food;
//     food = "chicken";
//     console.log(food);
//     food = "fish";
//     console.log(food);
// }
// mean(); // error; mean is not a function and it will not work beyond this point
// console.log(food); // will not run because of previous error; even so, 'food' variable is out of scope
// console.log(food); // same as above; food is out of scope and won't run anyway because of preceding errors

// --------------------------------------------------------

// 6
// BEFORE
// console.log(genre);
// var genre = "disco";
// rewind();
// function rewind() {
//     genre = "rock";
//     console.log(genre);
//     var genre = "r&b";
//     console.log(genre);
// }
// console.log(genre);

// AFTER
// var genre;
// function rewind() {
//     var genre;
//     genre = 'rock';
//     console.log(genre);
//     genre = 'r&b';
//     console.log(genre);
// }
// console.log(genre); // logs undefined
// genre = 'disco';
// rewind(); // logs 'rock', then logs 'r&b'
// console.log(genre); // logs 'disco'

// --------------------------------------------------------

// 7
// BEFORE
// dojo = "san jose";
// console.log(dojo);
// learn();
// function learn() {
//     dojo = "seattle";
//     console.log(dojo);
//     var dojo = "burbank";
//     console.log(dojo);
// }
// console.log(dojo);

// AFTER
// var dojo; // assumes dojo is a variable
// function learn() {
//     var dojo;
//     dojo = 'seattle';
//     console.log(dojo);
//     dojo = 'burbank';
//     console.log(dojo);
// }
// console.log(dojo); // logs 'san jose'
// learn(); // logs 'seattle', then logs 'burbank'
// console.log(dojo); // logs 'san jose'

// --------------------------------------------------------

// 8
// BEFORE
// console.log(makeDojo("Chicago", 65));
// console.log(makeDojo("Berkeley", 0));
// function makeDojo(name, students){
//     const dojo = {};
//     dojo.name = name;
//     dojo.students = students;
//     if(dojo.students > 50){
//         dojo.hiring = true;
//     }
//     else if(dojo.students <= 0){
//         dojo = "closed for now";
//     }
//     return dojo;
// }

// AFTER
// function makeDojo(name, students) {
//     const dojo = {};
//     dojo.name = name;
//     dojo.students = students;
//     if (dojo.students > 50) {
//         dojo.hiring = true;
//     } else if (dojo.students <= 0) {
//         dojo = 'closed for now';
//     }
//     return dojo;
// }
// console.log(makeDojo("Chicago", 65));   // logs an error because a const was assigned an empty
//                                         // object and consts can not be edited once declared/assigned a value
// console.log(makeDojo("Berkeley", 0));   // Will never run because of previous error, above