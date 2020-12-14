/* Biggie Size */
console.log("\n*** Biggie Size ***");
function makeItBig(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > 0) {
            arr[i] = "big";
        }
    }
    return arr;
}
console.log(makeItBig([-1,3,5,-5]));


/* Print Low, Return High */
console.log("\n\n*** Print Low, Return High ***");
function printLowReturnHigh(arr) {
    var min;
    var max;
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
    }
    console.log(min);
    return max;
}
console.log(printLowReturnHigh([-1,3,5,-5]));


/* Print One, Return Another */
console.log("\n\n*** Print One, Return Another ***");
function printOneReturnAnother(arr) {
    console.log(arr[arr.length - 2]);
    for (var i = 0; i < arr.length; i++) {
        if (Math.abs(arr[i]) % 2 == 1) {
            return arr[i]
        }
    }
}
console.log(printOneReturnAnother([-1,3,5,-5]));


/* Double Vision */
console.log("\n\n*** Double Vision ***");
var doubledArray = [];
function double(arr) {
    for (var i = 0; i < arr.length; i++) {
        console.log(arr[i]**2);
        doubledArray.push(arr[i] * 2);
    }
    return doubledArray;
}
console.log(double([1,2,3]));


/* Count Positives */
console.log("\n\n*** Count Positives ***");
function countPositives(arr) {
    var count = 0;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > 0) {
            count += 1
        }
    }
    arr[arr.length - 1] = count;
    return arr;
}
console.log(countPositives([-1,1,1,1]));


/* Evens and Odds */
console.log("\n\n*** Evens and Odds ***");
function evensAndOdds(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (Math.abs(arr[i]) % 2 == 1 && Math.abs(arr[i - 1]) % 2 == 1 && Math.abs(arr[i - 2]) % 2 == 1) {
            console.log("That's odd!");
        } else if (Math.abs(arr[i]) % 2 == 0 && Math.abs(arr[i - 1]) % 2 == 0 && Math.abs(arr[i - 2]) % 2 == 0) {
            console.log("Even more so!");
        }
    }
}
evensAndOdds([1,-13,97,17,2,3,4,-6,8,100,101,-11,67,41,4,3,2,4,5,2,6,-18]);


/* Increment the Seconds */
console.log("\n\n*** Increment the Seconds ***");
function incrementSeconds(arr) {
    for (var i = 0; i < arr.length; i++) {
        console.log(arr[i]);
        if (i > 0 && i % 2 == 1) {
            arr[i] += 1;
        }
    }
    return arr;
}
console.log(incrementSeconds([-1,3,5,-5]));


/* Previous Lengths */
console.log("\n\n*** Previous Lengths ***");
function previousLengths(arr) {
    for (var i = arr.length - 1; i >= 0; i--) {
        if (i > 1) {
            arr[i - 2] = arr[i - 2];
            var temp = arr[i-1].length;
            arr[i - 1] = arr[i - 2].length;
            arr[i] = temp;
            console.log("1 - " + arr[i - 2] + "; " + typeof(arr[i - 2]));
            console.log("2 - " + arr[i - i] + "; " +  + typeof(arr[i - 1]));
            console.log("3 - " + temp + "; " + typeof(temp));
            // console.log(arr[i])
        }
    }
    return arr;
}
console.log(previousLengths(["hello", "dojo", "awesome"]));


/* Add Seven */
console.log("\n\n*** Add Seven ***");
function addSeven(arr) {
    newArray = [];
    for (var i = 0; i < arr.length; i++) {
        newArray.push(arr[i] + 7);
    }
    return newArray;
}
console.log(addSeven([1,2,3]))


/* Reverse Array */
console.log("\n\n*** Reverse Array ***");
function reverse(arr) {
    for (var i = 0; i < arr.length / 2; i++) {
        var temp = arr[i];
        arr[i] = arr[arr.length - 1 - i];
        arr[arr.length - 1 - i] = temp;
    }
    return arr;
}
console.log(reverse([2,4,6,1,3]));


/* Outlook: Negative */
console.log("\n\n*** Outlook: Negative ***");
function negativeNums(arr) {
    var negativeArray = []
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > 0) {
            arr[i] *= -1;
        }
        negativeArray.push(arr[i])
    }
    return negativeArray;
}
console.log(negativeNums([1,-3,5]));


/* Always Hungry */
console.log("\n\n*** Always Hungry ***");
function hungry(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] == "food") {
            console.log("yummy");
        }
        if (!arr.includes("food")) {
            console.log("I'm hungry");
            return;
        }
    }
}
hungry(["food","garbage","words", "not food", "food"]);


/* Swap Toward the Center */
console.log("\n\n*** Swap Toward the Center ***");
function swapTowardCenter(arr) {
    for (var i = 0; i < arr.length / 2; i++) {
        if (i % 2 == 0) {
            var temp = arr[i];
            arr[i] = arr[arr.length - 1 - i];
            arr[arr.length - 1 - i] = temp;
        }        
    }
    return arr;
}
console.log(swapTowardCenter([true,42,"Ada",2,"pizza"]));


/* Scale the Array */
console.log("\n\n*** Scale the Array ***");
function multiply(x, y) {
    return x * y;
}

function scaleArray(arr, num) {
    for (var i = 0; i < arr.length; i++) {
        arr[i] = multiply(arr[i], num);
    }
    return arr;
}
console.log(scaleArray([1,2,3],3));