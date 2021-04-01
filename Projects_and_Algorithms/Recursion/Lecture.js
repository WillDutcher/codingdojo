const foo = (num) => {
    console.log(num);
    if (num === 1) {
        return 1;
    }
    return foo(num - 1);
};

foo(5);

// As a loop
// for (let i = 0; i < 6; i++) {
//   console.log(i);
// }


const f = (n) => {
    if (n < 2) {
        return 1;
    }
    return (f(n-1) + f(n-2));
}

console.log(f(8));