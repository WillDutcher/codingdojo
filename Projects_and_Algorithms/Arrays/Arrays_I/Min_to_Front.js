// Min to Front
/*
    Given an array of comparable values, move the lowest element to array's front, shifting
    backward any elements previously ahead of it. Do not otherwise change the array's order.
    Given [4,2,1,3,5], change it to [1,4,2,3,5] and return it. As always, do this without
    using built-in functions.
*/

arr = [4,2,1,3,5];
arr2 = [43, 42, 56, 23, 49, 18, 9, 28];
arr3 = ['Eddie', 'Drake', 'Albert', 'Bonnie', 'Clyde']

function minToFront(arr) {
    let min = arr[0];
    let minIdx = 0;
    for (let i=0; i<arr.length; i++) {
        if (arr[i] < min) {             // if current value is less than current min...
            min = arr[i];               // Make min the new current value at array index
            minIdx = i;                 // set the minIdx to the current value of i to use later
        }
    }
    for (let j=minIdx; j>0; j--) {
        let temp = arr[j];              // set min to a temp var
        arr[j] = arr[j-1]               // move current (e.g. arr[2]) to the left by one => arr[2] is now at arr[1]
        arr[j-1] = temp                 // move the value to the left of current head
    }
    return arr;
};

console.log(minToFront(arr));
console.log(minToFront(arr2));
console.log(minToFront(arr3));