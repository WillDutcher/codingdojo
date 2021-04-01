var sortedArr = [2, 4, 7, 23, 26, 41, 43, 43, 46];

// O(log n)

// 1. Exit condition
// 2. Computation
// 3. Recursion

function binarySearch(arr, num) {
  if (arr.length === 1) {
    return arr[0] === num;
  }
  var midpoint = Math.floor(arr.length / 2);
  return arr[midpoint] > num
    ? binarySearch(arr.slice(0, midpoint), num)
    : binarySearch(arr.slice(midpoint, arr.length), num);
}

console.log(binarySearch(sortedArr, 7));
console.log(binarySearch(sortedArr, 23));
console.log(binarySearch(sortedArr, "dogs"));
console.log(binarySearch(sortedArr, 61));

myArr = [
  261,
  064,
  293,
  019,
  339,
  066,
  473,
  560,
  159,
  058,
  496,
  186,
  725,
  027,
  634,
  087,
  053,
  296,
  178,
  319,
  988,
  081,
  048,
  140,
  234,
  839,
  916,
  551,
  791,
  747,
  023,
  312,
  734,
  519,
  853,
  285,
  208,
  709,
  833,
  248,
  994,
  077,
  482,
  947,
  172,
  925,
  655,
  646,
  388,
  467,
  908,
  284,
  046,
  435,
  115,
  134,
  207,
  424,
  585,
  355,
  167,
  387,
  333,
  350,
  949,
  928,
  310,
  283,
  044,
  145,
  620,
  751,
  611,
  180,
  852,
  124,
  720,
  380,
  730,
  905,
  933,
  389,
  198,
  920,
  313,
  891,
  674,
  438,
  348,
  689,
  683,
  225,
  150,
  239,
  977,
  288,
  595,
  260,
  352,
  885,
];

function normalSearch(arr, num) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] === num) {
      return true;
    }
  }
  return false;
}
