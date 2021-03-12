// Reverse
// Given a numerical array, reverse the order of values, in-place. The reversed array should
// have the same length, with existing elements moved to other indicies so that order of 
// elements is reversed. Working 'in-place' means that you cannot use a second array - move
// values within the array that you are given. As always, do not use built-in array functions
// such as splice().
console.log('\n*****     Reverse     *****');
function reverse(arr) {
    for (let i=0; i<Math.floor(arr.length/2);i++) {
        let temp = arr[i];
        arr[i] = arr[arr.length - 1 - i];
        arr[arr.length - 1 - i] = temp;
    }
    return arr;
};

arrReverse = [1, 2, 3, 4, 5];
arrReverse2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; 
console.log(reverse(arrReverse));
console.log(reverse(arrReverse2));


/*
Rotate
Implement rotateArr(arr, shiftBy) that accepts array and offset. Shift arr’s values to the right
by that amount. ‘Wrap-around’ any values that shift off array’s end to the other side, so that no
data is lost. Operate in-place: given ([1,2,3],1), change the array to [3,1,2]. Don’t use built-in
functions.
Second: allow negative shiftBy (shift L, not R).
Third: minimize memory usage. With no new array, handle arrays/shiftBys in the millions.
Fourth: minimize the touches of each element.
*/
console.log('\n*****     Rotate     *****');
function rotateArr(arr, shiftBy) {
    // console.log("Original Array: \n\t" + arr)
    let shiftNumber = Math.abs(shiftBy);            // Return absolute number to shift numbers within array
    while (shiftNumber > 0) {
        if (shiftBy > 0) {
            let temp = arr[arr.length - 1];         // set temp to LAST value in array
            for (let i=arr.length-1; i>0; i--) {    // Reverse-check the array
                arr[i] = arr[i - 1];                // Set current index at array to value of array[index minus one]
            }
            arr[0] = temp;                          // When loop complete, set FIRST value as temp...then...
        } else {
            let temp = arr[0];                      // set temp to FIRST value in array
            for (let i=0; i<arr.length; i++) {
                arr[i] = arr[i+1];
            }
            arr[arr.length-1] = temp;
        }
        shiftNumber--;                              // If shift number still > 0, decrement by one and run all over again
    }
    // return `Array after shifting by ${ shiftBy }:\n\t${ arr }\n\n`;
    return arr;
};

console.log(rotateArr([1, 2, 3], 1));
console.log(rotateArr([1, 2, 3], -1));
console.log(rotateArr([1, 2, 3, 4, 5, 6, 7], 3));
console.log(rotateArr([1, 2, 3, 4, 5, 6, 7], -5));
console.log(rotateArr([1,2,3,4,5],-2));


/*
Filter Range
Alan is good at breaking secret codes. One method is to eliminate values that lie within a specific known range. Given arr 
and values min and max, retain only the array values between min and max. Work in-place: return the array you are given, with 
values in original order. No built-in array functions.
*/
console.log('\n*****     filterRange     *****');
function filterRange(arr, min, max) {                           // This works, assuming array is in order, already...
    arr.sort();                                                 // ...so to mitigate any surprise arrays, I'm pre-sorting it
    console.log("array: " + arr)
    let betweenIndex = 0;
    for (let i=0; i<arr.length; i++) {
        if (arr[i] > min && arr[i] < max) {                     // If arr[i] is greater than min and less than max...
            for (let j=i; j<arr.length-1; j++) {                // create new for loop to compare current index against length of array - 1
                arr[betweenIndex] = arr[j];                     // set first value to the first number between min and max
                betweenIndex++;                                 // increment count
            }
            arr.length = arr.length-(max-min-1);
            console.log("LEN: " + arr.length)                // Cut length by one, returning [1,2]
            i--                                                 // Decrement i by one to account for newly-formed array and check outer for loop again
        }
    }
    return arr;
}

console.log(filterRange([1, 2, 3, 4, 5, 6], 2, 5));
console.log(filterRange([2, 1, 5, 2, 3, 4, 5, 6], 2, 5));


/*
Concat
Replicate JavaScript’s concat(). Create a standalone function that accepts two arrays. Return a new array containing the first 
array’s elements, followed by the second array’s elements. Do not alter the original arrays. Ex.: arrConcat( ['a','b'], [1,2] ) 
should return new array ['a','b',1,2].
*/
console.log('\n*****     Concat     *****');
function concatArrays(arr1, arr2) {
    let newArr = [];
    let arr1Len = arr1.length;
    let arr2Len = arr2.length;
    let concatIdx = 0;
    for (let i=0; i<arr1.length; i++) {
        newArr[i] = arr1[i];
    }
    for (let j=arr1.length; j<(arr1.length+arr2.length); j++) {
        newArr[j] = arr2[concatIdx];
        concatIdx++;
    }
    return newArr;
};

const firstArray = ['Coding', 'Dojo', 'MERN', 'MongoDB'];
const secondArray = ['Express', 'React', 'Node.js', 'Black Belt'];

console.log(concatArrays([1,2,3],['a','b','c']));
console.log(concatArrays(['a','b','c'],[1,2,3]));
console.log(concatArrays(firstArray, secondArray));




/* --- From lecture on March 11, 2021 --- */
/*
// Write a function that determines if two arrays have an item in common

let wordArr1 = ['ellas', 'nonacuity', 'cyclize', 'doorcase', 'goebbels', 'sylphid', 'degenerative', 'incompliance', 'nonratableness', 'glutose'];
let wordArr2 = ['aerobiosis', 'hemelytron', 'cyclize', 'lagune', 'fide', 'open', 'myalgic', 'mestee', 'savourily', 'humeral', 'spacewoman'];

function wordCompareFast(arr1, arr2) {
    var wordObj = {};
    for (var i=0; i<arr1.length; i++) {
        console.log(wordObj[arr1[i]]);
        wordObj[arr1[i]] = true;
    }
    for (var j=0; j<arr2.length; j++) {
        if (wordObj[arr2[j]]) {
            return true;
        }
    }
    return false;
}

console.log(wordCompareFast(wordArr1, wordArr2));
*/