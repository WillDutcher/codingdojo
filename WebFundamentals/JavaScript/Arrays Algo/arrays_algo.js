var testArr = [6,3,5,1,2,4];

/* Print Values and Sum */
console.log("\nPrint Values and Sum\n");
var sum = 0;
for (var i = 0; i < testArr.length; i++) {
    sum += testArr[i];
    console.log(`Num: ${testArr[i]}, Sum: ${sum}`);
}

/*
Expected Output
Num 6, Sum 6
Num 3, Sum 9
Num 5, Sum 14
Num 1, Sum 15
Num 2, Sum 17
Num 4, Sum 21
*/

console.log("\n\n");

console.log("Value * Position\n");
for (var i = 0; i < testArr.length; i++) {
    testArr[i] = testArr[i] * i;
}
console.log(testArr);

/*
Expected Output
[0,3,10,3,8,20]
*/