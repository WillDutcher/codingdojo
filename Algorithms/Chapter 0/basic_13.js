// 1: Print 1-255
//Print all the integers from 1 to 255.
let i1 = 1;
while (i1 < 256) {
    console.log(i1);
    i1++;
}


// 2: Print Sum 0-255
// Print integers from 0 to 255, and with each integer print the sum so far.
let sum = 0;
let i2 = 0;
while (i2 < 256) {
    sum += i2;
    i2++;
}
console.log(sum);


// 3: Find and Print Max
// Given an array, find and print its largest element.
const myArray = [36, 3, 6, 11, 34, 17, 19, 35];
let max;
for (let i = 0; i < myArray.length; i++) {
    if (i === 0) {
        max = myArray[i];
    } else {
        if (myArray[i] > max) {
            max = myArray[i]
        };
    };
};
console.log(max);


// 4. Array with Odds
// Create an array with all the odd integers between 1 and 255 (inclusive).
const myArray4 = [];
let i4 = 0;
while (i4 <= 255) {
    if (i4 % 2 !== 0) {
        myArray4.push(i4);
    }
    i4++;
};
console.log(myArray4);


// 5. Greater Than Y
// Given an array and a value Y, count and print the number of array values greater than Y.
const myArray5 = [1, 5, 2, 66, 37, 90];
const myNewArray5 = [];
const y = 6;
let count = 0;
for (let i = 0; i < myArray5.length; i++) {
    if (myArray5[i] > y) {
        myNewArray5.push(myArray5[i]);
        count++;
    }
}
console.log("Number of values greater than y (" + y + "): " + count);
console.log("That new array is: " + myNewArray5);


// 6. Max, Min, Average
// Given an array, print the max, min and average values for that array.
var maxMinAvgArray = [];
function getMaxMinAvg(arr) {
    var min;
    var max;
    var sum = 0;
    var avg = 0;
    for (var i = 0; i < arr.length; i++) {
        if (i == 0) {
            min = arr[i];
            max = arr[i];
        }
        if (arr[i] < min) {
            min = arr[i];
        } else if (arr[i] > max) {
            max = arr[i];
        }
        sum += arr[i];
    }
    avg = sum / arr.length;
    maxMinAvgArray.push(max, min, avg);
    return maxMinAvgArray;
}
const myArray6 = [1, 5, 9, 23, 4, -4, 18, -5, 30, 19]
const results6 = getMaxMinAvg(myArray6);
const max6 = maxMinAvgArray[0];
const min6 = maxMinAvgArray[1];
const avg6 = maxMinAvgArray[2];
console.log(`Max: ${max6}\nMin: ${min6}\nAvg: ${avg6}`);


// 7. Swap String for Array Negative Values
// Replace any negative array values with 'Dojo'.
function replaceValue(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] < 0) {
            arr[i] = "Dojo";
        }
    }
    return arr;
}
const myArray7 = [1, 38, -3, 18.1, -487, 7, 302, -45823, 16, 0]
const myNewArray7 = replaceValue(myArray7);
console.log(myNewArray7);


// 8. Print Odds 1-255.
// Print all odd integers from 1 to 255.
let i8 = 0;
while (i8 <= 255) {
    if (i8 % 2 !== 0) {
        console.log(i8);
    };
    i8++;
};


// 9. Iterate and Print Array
// Iterate through a given array, printing each value.
const myArray9 = [1, 2, 3, 4, 5, "Cat", "Dog", "Mouse", true, false, null, undefined, ":)"];
for (let i = 0; i < myArray9.length; i++) {
    console.log("Array Element " + i + ": " + myArray9[i]);
};


// 10. Get and Print Average
// Analyze an array’s values and print the average.
const myArray10 = [1, 2, 3, 4, 5, 16, 17, 18, 19, 30];
const length10 = myArray10.length;
let total10 = 0;
for (let i = 0; i < myArray10.length; i++) {
    total10 += myArray10[i];
};
let average = total10 / length10;
console.log(`Average of ${total10} divided by ${length10} is ${average}`);


// 11. Square the values
// Square each value in a given array, returning that same array with changed values.
function getSquareNum(arr) {
    for (var i = 0; i < arr.length; i++) {
        arr[i] = arr[i] * arr[i];
    }
    return arr;
}
const myArray11 = [1, 5, 28, -4, 0, -19, 22];
console.log(getSquareNum(myArray11));


// 12. Zero Out Negative Numbers
// Return the given array, after setting any negative values to zero.
function replaceValue(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] < 0) {
            arr[i] = 0;
        }
    }
    return arr;
}
const myArray12 = [1, 38, -3, 18.1, -487, 7, 302, -45823, 16, 0]
const myNewArray12 = replaceValue(myArray12);
console.log(myNewArray12);


// 13. Shift Array Values
// Given an array, move all values forward by one index, dropping the first and leaving a '0' value at the end.
function moveValuesForward(arr) {
    for (let i = 0; i < arr.length; i++) {
        if (i === 0) {
            arr.shift();
        }
    }
    arr.push(0);
    return arr;
}
let myArray13 = [1, 2, 3];
let results13 = moveValuesForward(myArray13);
console.log(results13);