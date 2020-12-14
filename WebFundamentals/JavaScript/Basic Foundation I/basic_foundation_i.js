/* Get 1 to 255 */
console.log("\nGet 1 to 255");
function get1To255() {
    var printNumsArray = [];
    for (var i = 1; i <= 255; i++) {
        printNumsArray.push(i)
    }
    return printNumsArray;
}
console.log(get1To255());

/* Get even 1000 */
console.log("\nGet even 1000");
var evenSum = 0;
function getEvenNums() {
    for (var i = 1; i <= 1000; i++) {
        if (i % 2 == 0) {
            evenSum += i;
        }
    }
    return evenSum;
}
console.log(getEvenNums());


/* Sum odd 5000 */
console.log("\nSum odd 5000");
var oddSum = 0;
function getOddNums() {
    for (var i = 1; i <= 5000; i++) {
        if (i % 2 == 1) {
            oddSum += i;
        }
    }
    return oddSum;
}
console.log(oddSum);


/* Iterate an array */
console.log("\nIterate an array");
var arrSum = 0;
function sumArray(arr) {
    for (var i = 0; i < arr.length; i++) {
        arrSum += arr[i];
    }
    return arrSum;
}

console.log(sumArray([1,2,5]));
console.log(sumArray([-5,2,5,12]));


/* Find max */
console.log("\nFind max");
var maxNum = 0;
function findMax(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > maxNum) {
            maxNum = arr[i];
        }
    }
    return maxNum;
}
console.log(findMax([-3,3,5,7]));


/* Find average */
console.log("\nFind average");
var avg = 0;
function findAvg(arr) {
    var sum = 0;
    for (var i = 0; i < arr.length; i++) {
        sum += arr[i]
    }
    avg = sum / arr.length;
    return avg;
}
console.log(findAvg([1,3,5,7,20]));


/* Array odd */
console.log("\nArray odd");
function arrayOddNums(num) {
    var oddArr = [];
    for (var i = 1; i < num + 1; i++) {
        if (i % 2 == 1) {
            oddArr.push(i);
        }        
    }
    return oddArr;
}
console.log(arrayOddNums(50));


/* Greater than Y */
console.log("\nGreater than Y");
function greaterThanY(arr, y) {
    var sumGreaterThanY = 0;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > y) {
            sumGreaterThanY++;
        }
    }
    return sumGreaterThanY;
}
console.log(greaterThanY([1,3,5,7], 3));


/* Squares */
console.log("\nSquares");
function getSquareNum(arr) {
    for (var i = 0; i < arr.length; i++) {
        arr[i] = arr[i] * arr[i];
    }
    return arr;
}
console.log(getSquareNum([1,5,10,-2]));


/* Negatives */
console.log("\nNegatives");
function negativeToZero(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] < 0) {
            arr[i] = 0;
        }
    }
    return arr;
}
console.log(negativeToZero([1,5,10,-2]));


/* Max/Min/Avg */
console.log("\nMax/Min/Avg");
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
console.log(getMaxMinAvg([1,5,10,-2]));


/* Swap Values */
console.log("\nSwap Values");
function swapValues(arr) {
    if (arr.length <= 1) {
        return "Error: array should have at least two elements. Cannot swap with value of just " + arr
    }
    var temp = arr[0];
    arr[0] = arr[arr.length-1]
    arr[arr.length-1] = temp;
    return arr;
}
console.log(swapValues([1]));
console.log(swapValues([1,5,10,-2]));


/* Number to String */
console.log("\nNumber to String");
function replaceValue(arr) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] < 0) {
            arr[i] = "Dojo";
        }
    }
    return arr;
}
console.log(replaceValue([-1,-3,2]));