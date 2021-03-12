// Biggie Size
// Given an array, write a function that changes all positive numbers in the array to “big”. 
//Example: makeItBig([-1,3,5,-5]) returns that same array, changed to [-1,"big","big",-5].
function biggieSize(arr) {
    newArr = [];
    for (let i=0; i<arr.length; i++) {
        if (arr[i] > 0) {
            arr[i] = 'big';
        }
        newArr.push(arr[i]);
    }
    return newArr;
};
console.log(biggieSize([-1, 3, 5, -5]));


// Print Low, Return High
// Create a function that takes an array of numbers. The function should print the lowest value 
// in the array, and return the highest value in the array.
function printLowReturnHigh(arr) {
    let low = arr[0];
    let high = arr[0];
    for (let i=0; i<arr.length; i++) {
        if (arr[i] < low) {
            low = arr[i];
        } else if (arr[i] > high) {
            high = arr[i]
        }
    }
    console.log(low);
    return high;
};
console.log(printLowReturnHigh([-1, 3, 5, -5]));


// Print One, Return Another
// Build a function that takes an array of numbers. The function should print the second-to-last 
// value in the array, and return first odd value in the array.
function printOneReturnAnother(arr) {
    let secToLast = arr.length - 2;
    console.log(secToLast);
    console.log(arr[secToLast]);
    for (let i=0; i<arr.length; i++) {
        if (arr[i] % 2 === 1) {
            return arr[i];
        }
    }
};
console.log(printOneReturnAnother([1, -3, 13, 81, -100, 4]));


// Double Vision
// Given an array, create a function to return a new array where each value in the original has been
// doubled. Calling double([1,2,3]) should return [2,4,6] without changing original.
function double(arr) {
    let newArr = [];
    for (let i=0; i<arr.length; i++) {
        newArr.push(arr[i]*2)
    }
    return newArr;
};
doubleArray = [1, 2, 3]
console.log(double(doubleArray));
console.log(doubleArray);


// Count Positives
// Given an array of numbers, create a function to replace last value with the number of positive values.
// Example, countPositives([-1,1,1,1]) changes array to [-1,1,1,3] and returns it.
function countPositives(arr) {
    let newArr = [];
    let count = 0;
    let last = arr.length - 1
    for (let i=0; i<arr.length; i++) {
        if (arr[i] > 0) {
            count++;
        }
        if (last === i) {
            newArr.push(count);
            return newArr;
        }        
        newArr.push(arr[i]);
    }
};
countPositivesArray = [-1,1,1,1];
console.log(countPositives(countPositivesArray));


// Evens and Odds
// Create a function that accepts an array. Every time that array has three odd values in a row, print "That's odd!"
// Ever time the array has three evens in a row, print "Even more so!";
function evensAndOdds(arr) {
    let temp1 = '';
    let temp2 = '';
    let temp3 = '';
    let oddCount = 0;
    let evenCount = 0;
    for (let i=0; i<arr.length; i++) {
        if (i < 2) {
            continue;
        } else {
            temp1 = arr[i - 2];
            temp2 = arr[i - 1];
            temp3 = arr[i];
        }
        if ((temp1 % 2 !== 0) && (temp2 % 2 !== 0) && (temp3 %2 !== 0)) {
            console.log("That's odd!");
            oddCount++;
        } else if ((temp1 % 2 === 0) && (temp2 % 2 === 0) && (temp3 %2 === 0)) {
            console.log("Even more so!");
            evenCount++;
        } else {
            continue;
        }
    }
    return `${ oddCount } odd counts vs ${ evenCount } even counts`
};
const evenOddArray = [1, 3, 5, 7, 9, 2, 4, 6, 8, 3]
console.log(evensAndOdds(evenOddArray));


// Increment the Seconds
// Given arr, add 1 to add elements([1], [3], etc.), console.log all values and return arr.
function incrementTheSeconds(arr) {
    let newArr = [];
    for (let i=0; i<arr.length; i++) {
        if (arr[i] % 2 !== 0) {
            arr[i] = arr[i] + 1;
        }
        newArr.push(arr[i]);
    }
    return newArr;
};
const incrementTheSecondsArray = [1, 2, 3, 4, 5];
console.log(incrementTheSeconds(incrementTheSecondsArray));


// Previous Lengths
// You are passed an array containing strings. Working within that same array, replace each string with a number – 
// the length of the string at previous array index – and return the array.
function prevLengths(arr) {
    const last = arr.length - 1;
    let newArr = [];
    for (let i=0; i<arr.length; i++) {
        if (i === last) {
            return newArr;
        }
        newArr.push(arr[i+1].length);
    }
};
prevLengthsArr = ['one', 'two', 'three', 'four', 'five']
console.log(prevLengths(prevLengthsArr));


// Add Seven to Most
// Build a function that accepts an array. Return a new array with all values except first, adding 7 to each. 
// Do not alter the original array.
function sevenToMost(arr) {
    let newArr = [];
    for (let i=0; i<arr.length; i++) {
        if (i === 0) {
            continue;
        }
        newArr.push(arr[i]+7);
    }
    return newArr;
};
const sevenToMostArr = [0, 2, 8, 'seven', 13];
console.log(sevenToMost(sevenToMostArr));


// Reverse Array
// Given array, write a function to reverse values, in-place. Example: reverse([3,1,6,4,2]) returns same array, 
// containing [2,4,6,1,3].
function reverseArrayFunction(arr) {
    for (let i=0; i<=Math.floor((arr.length-1)/2); i++) {
        let temp = arr[i];
        arr[i] = arr[arr.length - 1 - i];
        arr[arr.length - 1 - i] = temp;
    }
    return arr;
};
reverseArray = [3,1,6,4,2];
console.log(reverseArrayFunction(reverseArray));


// Outlook: Negative
// Given an array, create and return a new one containing all the values of the provided array, made negative 
// (not simply multiplied by -1). Given [1,-3,5], return [-1,-3,-5].
function negative(arr) {
    let newArr = [];
    for (let i=0; i<arr.length; i++) {
        if (arr[i] < 0) {
            newArr.push(arr[i]);
            continue;
        } else {
            let double = arr[i] * 2;
            newArr.push(arr[i] - double);
        }
    }
    return newArr;
}
const negativeArr = [1, -3, 5];
console.log(negative(negativeArr));


// Always Hungry
// Create a function that accepts an array, and prints "yummy" each time one of the values is equal to "food".
//  If no array elements are "food", then print "I'm hungry" once.
function alwaysHungry(arr) {
    if (!arr.includes('food')) {
        console.log("I'm hungry");
        return;
    }
    for (let i=0; i<arr.length; i++) {
        if (arr[i] === 'food') {
            console.log('yummy');
        }
    }
};
alwaysHungry(['food', 'hammer', 'food', 'car', 'airplane', 'ant']);
alwaysHungry(['cake', 'apple', 'pie', 'steak', 'broccoli', 'pizza']);


// Swap Toward the Center
// Given array, swap first and last, third and third-to-last, etc. Input[true,42,"Ada",2,"pizza"] becomes
// ["pizza",42,"Ada",2,true]. Change [1,2,3,4,5,6] to [6,2,4,3,5,1].
function swapTowardCenter(arr) {
    let newArr = [];
    for (let i=0; i<=Math.floor((arr.length-1)/2); i++) {
        if (i % 2 !== 0) {
            continue;
        } else {
            let temp = arr[i];
            arr[i] = arr[arr.length - 1 - i];
            arr[arr.length - 1 - i] = temp;
        }
    }
    return arr;
};
console.log(swapTowardCenter([true,42,"Ada",2,"pizza"]));
console.log(swapTowardCenter([1,2,3,4,5,6]));


// Scale the Array
// Given array arr and number num, multiply each arr value by num, and return the changed arr.
function scaleArray(arr, num) {
    for (let i=0; i<arr.length; i++) {
        arr[i] = arr[i] * num;
    }
    return arr;
};
console.log(scaleArray([1, 2, 3], 4));