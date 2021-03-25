console.log("\n*****Recursive Binary Search *****");
console.log(
  "Given a sorted array and a value, recursively determine whether value is found within array."
);

const rBinarySearch = (arr, num) => {
  if (arr === null || arr === undefined || arr.length === 0) {
    return false;
  }

  let pivot = Math.floor(arr.length / 2);

  if (arr[pivot] === num) {
    console.log("arr[pivot] (" + arr[pivot] + ") === num (" + num + ")");
    return true;
  } else if (num < arr[pivot] && arr.length > 1) {
    console.log(
      "num (" +
        num +
        ") < arr[pivot] (" +
        arr[pivot] +
        ") && arr.length (" +
        arr.length +
        ") > 1"
    );
    return rBinarySearch(arr.slice(0, pivot), num);
  } else if (num > arr[pivot] && arr.length > 1) {
    console.log(
      "num (" +
        num +
        ")> arr[pivot] (" +
        arr[pivot] +
        ") && arr.length (" +
        arr.length +
        ")> 1"
    );
    return rBinarySearch(arr.slice(pivot, arr.length), num);
  } else {
    return false;
  }
};

console.log(rBinarySearch([1, 3, 5, 6], 4) + "\n"); // false
console.log(rBinarySearch([4, 5, 6, 8, 12], 5) + "\n"); // true
console.log(rBinarySearch([24, 45, 16, 25, 98, 52], 25) + "\n"); // true
console.log(rBinarySearch([], 3) + "\n"); // false
console.log(rBinarySearch([4, 5, 6, 8, 12], "b") + "\n"); // false

console.log("\n\n***** Greatest Common Factor *****");
console.log(
  "Given two integers, create ***rGCF(num1, num2)*** to recursively determine Greatest Common Factor" +
    " (the largest integer dividing evenly into both). Greek mathematician euclid demonstrated these facts:"
);
console.log("\t1. gcf(a, b) === a, if a == b");
console.log("\t2. gcf(a, b) === gcf(a - b, b), if a > b");
console.log("\t3. gcf(a, b) === gcf(a, b - a), if b > a");
console.log(
  "\nSecond: rework facts #2 and #3 to reduce stack consumption and expand rGCF's reach."
);
console.log("You should be able to compute rGCF(123456, 987654)");

const rGCF = (num1, num2) => {
  if (num1 === num2) {
    return num1;
  }

  if (num1 > num2) {
    return rGCF(num1 - num2, num2);
  }

  if (num2 > num1) {
    return rGCF(num1, num2 - num1);
  }
};

console.log(rGCF(4, 8)); // 28
console.log(rGCF(8, 4)); // 28

const rGCF2 = (num1, num2) => {
  if (num1 === num2) {
    return num1;
  }

  if (num1 > num2) {
    if ((num1 / num2) % 1 === 0) {
      return num2;
    } else {
      return rGCF2(num1 - num2, num2);
    }
  }

  if (num2 > num1) {
    if ((num1 / num2) % 1 === 0) {
      return num2;
    } else {
      return rGCF2(num1, num2 - num1);
    }
  }
};

console.log(rGCF2(123456, 987654));

console.log("Bonus Challenges (Optional) - Tarai");

console.log(
  "The Tarai (Japanese: “to pass around”) function was created to profile recursive performance \n" +
    " in various systems and languages. Unlike other functions, numbers don't get particularly large, \n" +
    " but the amount of recursion is significant. The tarai function accepts three parameters and is \n" +
    " defined as: \n\n" +
    "tarai(x,y,z) == y, if x <= y (otherwise see rule #2); \n" +
    "tarai(x,y,z) == tarai(tarai(x-1,y,z),tarai(y-1,z,x),tarai(z-1,x,y)). \n" +
    "Calling tarai(10,2,9) should return 9 (after recursing 4145 times!). \n" +
    "\nString: In-Order Subsets \n" +
    " Create strSubsets(str). Return an array with every possible in-order character subset of str. \n" +
    " The resultant array itself nehttp://aikelab.net/tarai/ed not be in any specific order – it is the subset of letters in \n" +
    " each string that must be in the same order as they were in the original string. \n" +
    " Given 'abc', return an array that includes ['', 'c', 'b', 'bc', 'a', 'ac', 'ab', 'abc'] (in any order). \n"
);
console.log(
  "\n\nI didn't understand this well, but I found this: 'http://aikelab.net/tarai/'"
);

const tarai = (x, y, z) => {
  if (y < x) {
    return tarai(tarai(x - 1, y, z), tarai(y - 1, z, x), tarai(z - 1, x, y));
  } else {
    return y;
  }
};

console.log(tarai(10, 2, 9)); // 9
