// Setting and Swapping
// Set myNumber to 42. Set myName to your name. Now swap myNumber into myName & vice versa.
let myNumber = 42;
let myName = 'Will';
console.log('myNumber: ' + myNumber);
console.log('myName: ' + myName);
temp = myNumber;                            // Necessary or the switch won't work
myNumber = myName;
myName = temp;
console.log('myNumber: ' + myNumber);
console.log('myName: ' + myName);

// Alternative interesting way:
let x = 'String';
let y = 100;
[ x, y ] = [ y, x ];
console.log('x: ' + x);
console.log('y: ' + y);


// Print -52 to 1066
// Print integers from -52 to 1066 using a FOR loop.
for (let x=-52; x<=1066; x++) {
    console.log(x)
};


// Don't Worry, Be Happy
// Create beCheerful(). Within it, console.log string "good morning!" Call it 98 times.
let count = 1;
function beCheerful() {
    while (count > 0) {
        console.log("good morning!");
        count++;
        if (count === 99) {
            return false;
        }
    }
};
beCheerful();


// Multiples of Three, but Not All
// Using FOR, print multiples of 3 from -300 to 0. Skip -3 and -6.
for (let x=-300; x<=0; x+=3) {
    if (x === -3 || x === -6) {
        continue;
    }
    console.log(x);
};


// Printing Integers with While
// Print integers from 2000 to 5280, using a WHILE.
let testInt = 2000;
while (testInt <= 5280) {
    console.log(testInt);
    testInt++;
};


// You Say It’s Your Birthday
// If 2 given numbers represent your birth month and day in either order, log "How did you know?",
// else log "Just another day...."
const bdayMonth = 10;
const bdayDay = 30;
const bdayString1 = parseInt(bdayMonth + "" + bdayDay)
const bdayString2 = parseInt(bdayDay + "" + bdayMonth)
const testBdays = [ 1030, 0101, 1231, 1111, 3010, 0304, 0627 ];
for (var bday=0; bday<testBdays.length; bday++) {
    if (testBdays[bday] === bdayString1 || testBdays[bday] === bdayString2) {
        console.log("Hod did you know?");
    } else {
        console.log("Just another day...");
    }
};


// Leap Year
// Write a function that determines whether a given year is a leap year. If a year is divisible by
// four, it is a leap year, unless it is divisible by 100. However, if it is divisible by 400, then it is.
function getLeapYear(year) {
    if ((year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)) {
        console.log(`${ year } is a leap year`);
    } else {
        console.log(`${ year } is NOT a leap year`);
    }
};
getLeapYear(1600);
getLeapYear(2500);
getLeapYear(1979);
getLeapYear(2000);
getLeapYear(2100);


// Print and Count
// Print all integer multiples of 5, from 512 to 4096. Afterward, also log how many there were.
let mult5sCount = 0;
for (let mult5s=512; mult5s<=4096; mult5s+=5) {
    console.log(mult5s);
    mult5sCount++;
}
console.log(`There were a total of ${ mult5sCount } multiples of 5 between 512 and 4096.`);


// Multiples of Six
// Print multiples of 6 up to 60,000, using a WHILE.
let mult6 = 0;
while (mult6 <= 60000) {
    console.log(mult6);
    mult6 += 6;
};


// Counting, the Dojo Way
// Print integers 1 to 100. If divisible by 5, print "Coding" instead. If by 10, also print " Dojo".
for (let myInt = 1; myInt <= 100; myInt++) {
    let dojoway = 'Coding'
    if (myInt % 5 === 0) {
        if (myInt % 10 === 0) {
            dojoway += ' Dojo';
        }
        console.log(dojoway);
    } else {
        console.log(myInt);
    }
};


// What Do You Know?
// Your function will be given an input parameter incoming. Please console.log this value.
function readInput(incoming) {
    console.log(`You said: "${ incoming }"`)
}
readInput("This is my input.")


// Whoa, That Sucker’s Huge…
// Add odd integers from -300,000 to 300,000, and console.log the final sum. Is there a shortcut?
let hugeSum = 0;
let hugeNumber = -300000;
while (hugeNumber <= 300000) {
    if (hugeNumber % 2 === 1) {
        hugeSum += hugeNumber;
    }
    hugeNumber++;
}
console.log(hugeSum);


// Countdown by Fours
// Log positive numbers starting at 2016, counting down by fours (exclude 0), without a FOR loop.
let countDown = 2016;
while (countDown > 0) {
    console.log(countDown);
    countDown -= 4;
};


// Flexible Countdown
// Based on earlier “Countdown by Fours”, given lowNum, highNum, mult, print multiples of mult from
// highNum down to lowNum, using a FOR. For (2,9,3), print 9 6 3 (on successive lines).
function flexCountdown(lowNum, highNum, mult) {
    for (let i=highNum; i>=lowNum; i--) {
        if (i % mult === 0) {
            console.log(i);
        };
    };
};
flexCountdown(2, 9, 3);
flexCountdown(0,100000, 29);


// The Final Countdown
// This is based on “Flexible Countdown”. The parameter names are not as helpful, but the problem is
// essentially identical; don’t be thrown off! Given 4 parameters (param1,param2,param3,param4), print
// the multiples of param1, starting at param2 and extending to param3. One exception: if a multiple
// is equal to param4, then skip (don’t print) it. Do this using a WHILE. Given (3,5,17,9),
// print 6,12,15 (which are all of the multiples of 3 between 5 and 17, and excluding the value 9).

// 1: print the multiples of param1, starting at param2 and extending to param3
// 2: if multiple === param4, continue

// function finalCountdown(3, 5, 17, 9) {

function finalCountdown(param1, param2, param3, param4) {
    let start = param2;
    let end = param3;
    let mult = param1;
    let num = param2;
    while (num <= param3) {
        if (num === param4) {
            num++;                  // You must still increment or it will never execute further!
            continue;
        }
        if (num % param1 === 0) {
            console.log(num);
        }
        num++;
    };
};

finalCountdown(3, 5, 17, 9);
finalCountdown(17, 31, 683, 289);