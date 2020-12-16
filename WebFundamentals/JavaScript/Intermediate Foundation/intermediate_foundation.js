/* Sigma */
console.log("\n*** Sigma***");
function sigma(num) {
    var sum = 0;
    for (i = 1; i <= num; i++) {
        sum += i;
    }
    return sum;
}
console.log(sigma(6));


/* Factorioal */
console.log("\n*** Factorial ***");
function factorial(num) {
    var sum = 0;
    for (i = 1; i <= num; i++) {
        if (sum === 0) {
            sum = i;
        }
        sum *= i;
    }
    return sum;
}
console.log(factorial(4));


/* Fibonacci */
console.log("\n*** Fibonacci ***");
function fibonacci(num) {
    var sequence = [];
    for (var i = 0; i <= num; i++) {
        if (i === 0 || i === 1) {
            sequence.push(i);
        } else {
            sequence.push(sequence[i-2] + sequence[i-1]);
        }
    }
    return sequence
}
console.log(fibonacci(7));


/* Array: Second-to-Last */
console.log("\n*** Array: Second-to-Last ***");
function secondToLastElement(arr) {
    if (arr.length < 2) {
        return null;
    } else {
        var secondToLastIndex = arr.length - 2;
        var secondToLastItem = arr[secondToLastIndex];
        return secondToLastItem;
    }
    
}
console.log(secondToLastElement([42, true, 4, "Liam", 7]));


/* Array: Nth-to-Last */
console.log("\n*** Array: Nth-to-Last ***");
function nthToLastElement(arr, idx) {
    if (idx >= arr.length) {
        return null;
    } else {
        var nthIndex = arr.length - idx;
        var soughtArrayItem = arr[nthIndex];
        return soughtArrayItem;
    }
}
console.log(nthToLastElement([42, true, 4, "Liam", 7], 4));


/* Array: Second-Largest */
console.log("\n*** Array: Second-Largest ***");
function secondLargest(arr) {
    var max;
    var secondLargest;
    if (arr.length <= 1) {
        return null;
    }
    for (var i = 0; i < arr.length; i++) {
        if (i === 0) {
            max = arr[i];
        } else if (i === 1 && arr[i] > max) {
            secondLargest = max;
            max = arr[i];            
        } else if (i === 1 && arr[i] < max) {
            secondLargest = arr[i];
        } else if (arr[i] > max) {
            secondLargest = max;
            max = arr[i];
        } else if (arr[i] < max && arr[i] > secondLargest) {
            secondLargest = arr[i];
        }
    }
    return secondLargest
}
console.log(secondLargest([42,1,4,3.14,7]));


/* Double Trouble */
console.log("\n*** Double Trouble ***");
function doubleTrouble(arr) {
    var doubledArray = [];
    for (var i = 0; i < arr.length; i++) {
        doubledArray.push(arr[i], arr[i]);
    }
    return doubledArray;     
}
console.log(doubleTrouble([4, "Ulysses", 42, false]));