// Countdown
// Create a function that accepts a number as an input. Return a new array 
// that counts down by one, from the number (as array’s ‘zeroth’ element) 
// down to 0 (as the last element). How long is this array?
function countdown(num) {
    let result = [];
    for (let i=num; i>=0; i--) {
        result.push(i)
        console.log(i)
    };
    return (result, `This array is ${ result.length } numbers long.`);
};
console.log(countdown(10));


// Print and Return
// Your function will receive an array with two numbers. Print the first value
// and return the second.
function printAndReturn(num1, num2) {
    console.log(num1);
    return num2;
};
console.log(printAndReturn(1, 3));


// First Plus Length
// Given an array, return the sum of the first value in the array, plus the array's
// length. What happens if the array's first value is not a number, but a string
// (like "what") or a boolean (like false).
function firstPlusLength(arr) {
    return arr[0] + arr.length;
};
console.log(firstPlusLength([ 11, 3, 55, 6, 38 ]));
console.log(firstPlusLength([ 'what?', 3, 55, 6, 38 ]));    // creates string instead of number return
console.log(firstPlusLength([ false, 3, 55, 6, 38 ]));      // false = 0


// Values Greater than Second
// For [1,3,5,7,9,13], print values that are greater than its 2nd value. Return how many values this is.
function greaterThanSecond(arr) {
    let count = 0;
    for (let i=0; i<arr.length; i++) {
        if (arr[i] > arr[1]) {
            console.log(arr[i]);
            count++;
        };
    };
    return `Number of values in array greater than ${ arr[1] }: ${ count}`;
};
console.log(greaterThanSecond([1,3,5,7,9,13]));


// Fit the First Value
// Your function should accept an array. If value at [0] is greater than array’s length, print "Too big!"; if 
// value at [0] is less than array’s length, print "Too small!"; otherwise print "Just right!".
function fitFirstVal(arr) {
    if (arr[0] > arr.length) {
        console.log("Too big!");
    } else if (arr[0] < arr.length) {
        console.log("Too small!");
    } else {
        console.log("Just right!");
    }
};
fitFirstVal([ 1, 2, 3, 4, 5 ]);
fitFirstVal([ 5, 4, 3, 2, 1 ]);
fitFirstVal([ 6, 4, 5, 1, 2 ]);


// Fahrenheit to Celsius
// Kelvin wants to convert between temperature scales. Create fahrenheitToCelsius(fDegrees) that accepts a number 
// of degrees in Fahrenheit and returns the equivalent temperature as expressed in Celsius degrees. For review, 
// Fahrenheit = (9/5 * Celsius) + 32.
function fahrenheitToCelsius(degreesFahrenheit) {
    return ((degreesFahrenheit - 32) * 5/9);
};
console.log(fahrenheitToCelsius(32));
console.log(fahrenheitToCelsius(68));


// Celsius to Fahrenheit'
// Create celsiusToFahrenheit(cDegrees) that accepts number of degrees Celsius, and returns the equivalent 
// temperature expressed in Fahrenheit degrees.
function celsiusToFahrenheit(degreesCelsius) {
    return (((9/5) * degreesCelsius) + 32);
};
console.log(celsiusToFahrenheit(0));
console.log(celsiusToFahrenheit(20));


// Optional
// Do Fahrenheit and Celsius values equate at a certain number? The scientific calculation can be complex, 
// so for this challenge just try a series of Celsius integer values starting at 200, going downward (descending), 
// checking whether it is equal to the corresponding Fahrenheit value.
function celsiusEqualsFahrenheit() {
    for (let i=200; i>=-200; i--) {
        let a = fahrenheitToCelsius(i);
        let b = celsiusToFahrenheit(i);
        if (a === b) {
            return `We found a match! ${ i } degrees Fahrenheit is equal to ${ i } degrees Celsius!`
        };
    };
};
console.log(celsiusEqualsFahrenheit());