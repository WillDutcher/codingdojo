console.log("\n***** Recursive Sigma *****");
console.log(
  "Write a recursive function that, given a number, returns the sum of integers from 1 to that number."
);
console.log(
  "Example: rSigma(5) = 15 (1 + 2 + 3 + 4 + 5); rSigma(2.5) = 3 (1 + 2); rSigma(-1) = 0"
);

// const withAForLoop = (num) => {
//   let sum = 0;
//   for (let i = 0; i <= num; i++) {
//     sum += i;
//   }
//   return sum;
// };
// console.log(withAForLoop(5));
// console.log(withAForLoop(2.5));
// console.log(withAForLoop(-1));

const rSigma = (num) => {
  num = Math.floor(num);
  if (num > 0) {
    return rSigma(num - 1) + num;
  }
  return 0;
};
console.log(rSigma(5));
console.log(rSigma(2.5));
console.log(rSigma(-1));

console.log("\n***** Recursive Factorial *****");
console.log(
  "Given num, return the product of ints from 1 up to num. If less than zero, treat as zero."
);
console.log(
  "If not an integer, truncate. Experts tell us 0! is 1. rFact(3) = 6 (1*2*3). Also, rFact(6.5) = 720 (1*2*3*4*5*6)."
);

const rFactorial = (num) => {
  num = Math.floor(num);
  if (num > 0) {
    return rFactorial(num - 1) * num;
  }
  return 1;
};

console.log(rFactorial(0));
console.log(rFactorial(3));
console.log(rFactorial(6.5));

console.log("\n***** Bonus Challenge (Optional) *****");

let canvas2D = [
  [3, 2, 3, 4, 3],
  [2, 3, 3, 4, 0],
  [7, 3, 3, 5, 3],
  [6, 5, 3, 4, 1],
  [1, 2, 3, 3, 3],
];
const startXY = [2, 2];
const newColor = 1;

const floodFill = (canvas2D, startXY, newColor) => {
  let sr = startXY[0];
  let sc = startXY[1];
  let startPoint = canvas2D[sr][sc];

  // If supplied canvas2D is null, or
  // if length of canvas2D is less than 1, or
  // if the starting point is already the expected new color...then return
  if (
    canvas2D === null ||
    canvas2D.length < 1 ||
    canvas2D[sr][sc] === newColor
  ) {
    return canvas2D;
  }

  const fillOne = (canvas2D, r, c, newColor, startPoint) => {
    if (
      r < 0 ||
      r >= canvas2D.length ||
      c < 0 ||
      c >= canvas2D[0].length ||
      startPoint !== canvas2D[r][c]
    ) {
      return;
    }
    canvas2D[r][c] = newColor;
    fillOne(canvas2D, r - 1, c, newColor, startPoint); // Up
    fillOne(canvas2D, r + 1, c, newColor, startPoint); // Down
    fillOne(canvas2D, r, c - 1, newColor, startPoint); // Left
    fillOne(canvas2D, r, c + 1, newColor, startPoint); // Right
  };
  // Need to call again because new params
  fillOne(canvas2D, sr, sc, newColor, startPoint);
  return canvas2D;
};

console.log(floodFill(canvas2D, startXY, newColor));
