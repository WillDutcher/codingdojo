/* Print odds 1-20 */
console.log("\nPrint odds 1-20 - for loop");
for (var i = 1; i <= 20; i++) {
    if (i % 2 == 1) {
        console.log(i);
    }
}

// or

console.log("\nPrint odds 1-20 - while loop");
var num1 = 1
while (num1 <= 20) {
    if (num1 % 2 == 1) {
        console.log(num1);
    }
    num1++;
}
console.log("\n\n")


/* Sum and Print 1-5 */
console.log("Sum and Print 1-5 - for loop\n");
var sum_for = 0;
for (var i = 1; i <= 5; i++) {
    console.log(`Num: ${i}`);
    console.log(`Sum: ${sum_for += i}`);
}

// or

console.log("\nSum and Print 1-5 - while loop\n");
var sum_while = 0;
var num_while = 1;
while (num_while <= 5) {
    console.log(`Num: ${num_while}`);
    console.log(`Sum: ${sum_while += num_while}`);
    num_while++;
}
console.log("\n\n")