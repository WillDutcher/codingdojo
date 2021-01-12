// Number.prototype.isPrime = function() {
//     let root = Math.sqrt(this);
//     for( let i=2; i<=root; i++ ) {
//         if( this % i === 0 ) {
//             return false;
//         }
//     }
//     return true;
// }

// const { performance } = require('perf_hooks');
// const start = performance.now();
// let primeCount = 0;
// // let primeCount2 = 0;
// // let primeCount3 = 0;
// let num = 2; // for math reasons, 1 is considered prime
// while( primeCount < 1e4 ) {
//     if( num.isPrime() ) {
//         primeCount++;
//     }
//     num++;
// }
// console.log(`The 10,000th prime number is ${num-1}`); // 104729
// // console.log(`The 100,000th prime number is ${num2-1}`); // 1299709
// // console.log(`The 1,000,000th prime number is ${num3-1}`); // 15,485,863
// console.log(`This took ${performance.now() - start} milliseconds to run`);


// // recursive
// function rFib( n ) {
//     console.log('n: ' + n)
//     if ( n < 2 ) {
//         return n;
//     }
//     console.log("From return: " + rFib( n-1 ) + rFib( n-2 ));
//     return rFib( n-1 ) + rFib( n-2 );
// }
// console.log(rFib(20));
// // iterative
// function iFib( n ) {
//     const vals = [ 0, 1 ];
//     while(vals.length-1 < n) {
//         let len = vals.length;
//         vals.push( vals[len-1] + vals[len-2] );
//     }
//     return vals[n];
// }
// console.log(iFib(20));
// The iterative process will be faster because it has more math to do


const story = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident culpa nihil repellat nulla laboriosam maxime, quia aliquam ipsam reprehenderit delectus reiciendis molestias assumenda aut fugit tempore laudantium tempora aspernatur? Repellendus consequatur expedita doloribus soluta cupiditate quae fugit! Aliquid, repellat animi, illum molestias maiores, laboriosam vero impedit iusto mollitia optio labore asperiores!";
const reversed1 = story.split("").reverse().join("");
console.log(reversed1)

// Rewritten with a for loop
const reverseMyStory = story => {                   // arrow function
    let reversedStory = "";                         // Set new string to take in the reversed story elements
    for (let i = story.length - 1; i >=0; i--) {    // Work backwards; set i to length of story - 1 re: 0-based length
        reversedStory += story[i];                  // Take the last character ('!') and append to reversed story, subtract one from length
    }                                               // keep repeating ('s', then 'e', so on);
    return reversedStory;                           // return the new string once story param iterated through
}
console.log(reverseMyStory(story));
console.log(reverseMyStory('hello world!'));