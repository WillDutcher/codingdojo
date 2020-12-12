/* Print 1 to x */
console.log('\n\nPrint 1 to x')
function printUpTo(x) {
    for (var i = 0; i < x; i++) {
        console.log(i)
    }
}
printUpTo(100); // should print all the integers from 1 to 1000000
var y = printUpTo(-10); // should return false
console.log(y) // should print false



/* PrintSum */
console.log('\n\nPrintSum')
function printSum(x) {
    var sum = 0;
    for (var i = 0; i < x; i++) {
        console.log(i)
        sum += i;
        console.log('\tCurrent sum: ' + sum)
    }
    return sum
}
var y = printSum(5) // should print all the integers from 0 to 255 and with each integer print the sum so far.
console.log(y) // should print 32640



/* PrintSumArray */
console.log('\n\nPrintSumArray');
function printSumArray(x) {
    var sum = 0;
    for (var i = 0; i < x.length; i++) {
        sum += x[i];
    }
    return sum;
}
console.log(printSumArray([1, 2, 3])); // should log 6



/* LargestElement */
console.log('\n\nLargestElement');
function largestElement(arr) {
    var max = 0;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}
var arr = [1, 30, 5, 7];
console.log(largestElement(arr));
