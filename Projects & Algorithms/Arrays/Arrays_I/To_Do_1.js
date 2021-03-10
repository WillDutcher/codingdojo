// Push Front
// Given an array and an additional value, insert this value at the beginning of the array.
// Do this without using any built-in array methods.
console.log('\n*****     Push Front     *****')
let arr1 = ['apple', 'banana', 'carrot']
let addlVal1 = 'doughnut'

function pushFront(arr, val) {
    newArr = [];
    newArr.push(val);
    for (var i=0; i<arr.length; i++) {
        newArr.push(arr[i]);
    }
    return newArr;
};

function pushFront2(arr, val) {
    return [val].concat(arr1);
};

console.log(pushFront2(arr1, addlVal1));


// Pop Front
// Given an array, remove and return the value at the beginning of the array. Do this without
// using any built-in array methods except pop().
console.log('\n*****     Pop Front     *****')
let arr2 = [1, 2, 3, 4, 5, 6, 7];

function popFront(arr) {
    arr.reverse()
    for (var i=0; i<arr.length; i++) {
        if (i === 0) {
            arr.pop();
        }
    }
    arr.reverse();
    return arr;
};

console.log(popFront(arr2));


// Insert At
// Given an array, index, and additional value, insert the value into array at given index.
// Do this without using built-in array methods. You can think of pushFront(arr,val) as 
// equivalent to insertAt(arr,0,val).
console.log('\n*****     Insert At     *****')
let arr3 = [1, 2, 3, 4, 5];
let idx3 = 2;
let addlVal3 = 9;

function insertAt(arr, idx, addlVal) {
    for (var i=arr.length-1; i>=0; i--) {
        console.log("i = arr[" + i + "], we want it at arr[" + (i + 1) + "]")
        arr[i+1] = arr[i]
        if (i === idx) {
            arr[i] = addlVal3;
            break;
        }
        console.log(`arr[${i+1}] == ${arr[i]}`);
    }
    // arr[arr.length - idx] = addlVal;
    return arr;
}

console.log(insertAt(arr3, idx3, addlVal3));


// Remove At
// Given an array and an index into array, remove and return the array value at that index. 
// Do this without using built-in array methods except pop(). Think of popFront(arr) as 
// equivalent to removeAt(arr,0).
console.log('\n*****     Remove At     *****')
arr4 = [1, 2, 3, 4, 5];
idx4 = 2;

function removeAt(arr, idx) {
    arr[idx] = arr[arr.length]
    for (let i=0; i<arr.length-1; i++) {
        if (i >= idx) {
            console.log(arr[i])
            arr[i] = arr[i+1];
        }
    }
    arr.pop();
    console.log(arr);    
}

removeAt(arr4, idx4);


// Swap Pairs
// Swap positions of successive pairs of values of given array. If length is odd, do not 
// change the final element. For [1,2,3,4], return [2,1,4,3]. For example, change input 
// ["Brendan",true,42] to [true,"Brendan",42]. As with all array challenges, do this 
// without using any built-in array methods.
console.log('\n*****     Swap Pairs     *****')
arr5a = [1, 2, 3, 4, 5]
arr5b = [1, 2, 3, 4, 5, 6]

function swapPairs(arr) {
    for (let i=0; i<arr.length-1; i+=2) {
        let temp = arr[i];
        arr[i] = arr[i+1];
        arr[i+1] = temp;
    }
    return arr;
}

console.log(swapPairs(arr5a));
console.log(swapPairs(arr5b));
console.log(["Brendan",true,42]);


// Remove Duplicates
// Sara is looking to hire an awesome web developer and has received applications from 
// various sources. Her assistant alphabetized them but noticed some duplicates. Given a 
// sorted array, remove duplicate values. Because array elements are already in order, all 
// duplicate values will be grouped together. As with all these array challenges, do this 
// without using any built-in array methods.
// Second: Solve this without using any nested loops.
console.log('\n*****     Remove Duplicates     *****')
arr6 = ['Alice', 'Alice', 'Alice', 'Brian', 'Charles', 'Callie', 'Callie', 'David', 'David', 'Ella', 'Ella', 'Ella'];

function removeDuplicates(arr) {
    const newArr = [];
    let idx = 0;
    const temp = {};
    for (let i = 0; i < arr.length; i++) {
        if (!temp[arr[i]]) {
            temp[arr[i]] = 1;
            newArr[idx] = arr[i];
            idx++;
        }
    }
    return newArr;
}

console.log(removeDuplicates(arr6));