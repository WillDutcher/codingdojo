// Only Keep the Last Few
// Stan learned something today: that directly decrementing an array’s .length immediately shortens 
// it by that amount. Given array arr and number X, remove all except the last X elements, and 
// return arr (changed and shorter). Given ([2,4,6,8,10],3), change the given array to [6,8,10] and 
// return it.
function keepLastFew(arr, num) {
    for (let i=0; i<=arr.length-num; i++) {
        arr.shift();
    }
    return arr;
};
console.log(keepLastFew([2, 4, 6, 8, 10], 3));


// Math Help
// You are given two numbers – coefficients M and B in the equation Y = MX + B.
// Build a function to return the X-intercept.
// The x-intercept is the value of X where Y equals zero.
// y = mx + b
//  mx + b = y
//  mx + b - b = y - b      =>      mx = y - b
//  mx / m = (y - b) / m    =>      x = (y - b) / m
function getXCoefficient(m, b) {
    let x = undefined;
    let y = 0;
    x = (y - b) / m;
    return x;
}
console.log(getXCoefficient(1, 1));
console.log(getXCoefficient(3, 9));


// Poor Kenny
// Out of the last 100 days, there were 10 days with volcano eruptions, 
// 15 tsunamis, 20 earthquakes, 25 blizzards and 30 meteors (for 100 days total).
// If these probabilities continue, write whatHappensToday() to print a day’s outcome.
let volcano = 10;
let tsunami = 15;
let earthquake = 20;
let blizzard = 25;
let meteor = 30;
function whatHappensToday() {
    let todaysDisaster = Math.floor((Math.random() * 100) + 1);
    if (todaysDisaster <= volcano) {
        return "Volcano"
    } else if (todaysDisaster <= volcano + tsunami) {
        return "Tsunami"
    } else if (todaysDisaster <= volcano + tsunami + earthquake) {
        return "Earthquake"
    } else if (todaysDisaster <= volcano + tsunami + earthquake + blizzard) {
        return "Blizzard"
    } else { 
        return "Meteor"
    }
};
console.log(whatHappensToday());


// What Really Happened?
// Change whatHappensToday() function to create whatReallyHappensToday().
// In this new function test for each disaster independently, instead of assuming exactly one disaster will happen.
// In other words, with this new function, all five might occur today – or none. Maybe Kenny will survive!
function whatReallyHappensToday() {
    let disasters = [];
    let disasterNumbers = [];
    for (let i=1; i<=5; i++) {
        const num = getRandomNumber();
        if (i === 1 && num <= volcano) {
            disasters.push('volcano');
        } else if (i === 2 && num <= tsunami) {
            disasters.push('tsunami');
        } else if (i === 3 && num <= earthquake) {
            disasters.push('earthquake');
        } else if (i === 4 && num <= blizzard) {
            disasters.push('blizzard');
        } else if (i === 5 && num <= meteor) {
            disasters.push('meteor');
        }
    }
    if (disasters.length === 0) {
        return `No disasters were encountered...today...`
    } else if (disasters.length === 1) {
        return `Kenny encountered ${ disasters.length } disaster today: ${ disasters }`
    } else {
        return `Kenny encountered ${ disasters.length } disasters today: ${ disasters }`
    }
    // let volcanoDisaster = getRandomNumber();
    // let tsunamiDisaster = getRandomNumber();
    // let earthquakeDisaster = getRandomNumber();
    // let blizzardDisaster = getRandomNumber();
    // let meteorDisaster = getRandomNumber();
}

function getRandomNumber() {
    return Math.floor((Math.random() * 100) + 1);
}

console.log(whatReallyHappensToday());


// Soaring IQ
// Let’s say a new Dojo student, Bogdan entered with a modest IQ of 101.
// Let’s say that during a 14-week bootcamp, his  IQ rose by .01 on the first day,
// then went up by an additional .02 on the second day,  then up by .03 more on the third day, etc.
// all the way until increasing by .98 on his 98th day. What is Bogdan’s final IQ?
let bogdanIq = 101;
function soaringIQ(iq) {
    const numDaysInWeek = 7
    const numWeeks = 14;
    const numDays = numDaysInWeek * numWeeks;
    let days = 1;
    iqIncrement = .01
    while (days <= numDays) {
        let incrementIq = days * iqIncrement;
        bogdanIq += incrementIq;
        days++;
    }
    return `Bogdan's new IQ: ${ bogdanIq }`
    
};
console.log(soaringIQ(bogdanIq));


// Letter Grade
// Write a function that assigns and prints a letter grade, given an integer representing a score from 0 to 100.
// Those getting 90+ get an ‘A’, 80-89 earn ‘B’, 70-79 is a ‘C’, 60-69 should get a ‘D’, and lower than 60 receive ‘F’.
// For example, given 88, you should log "Score: 88. Grade: B". Given the score 61, log the string "Score: 61. Grade: D".
function letterGrade(grade) {
    let letter = null;
    if (grade >= 90) {
        letter = 'A'
    } else if (grade >= 80) {
        letter = 'B'
    } else if (grade >= 70) {
        letter = 'C'
    } else if (grade >= 60) {
        letter = 'D'
    } else {
        letter = 'F'
    }
    return `Score: ${ grade }. Grade: ${ letter }`
};
console.log(letterGrade(95));
console.log(letterGrade(85));
console.log(letterGrade(75));
console.log(letterGrade(65));
console.log(letterGrade(61));
console.log(letterGrade(55));


// More Accurate Grades
// For an additional challenge, add ‘-’ signs to scores in the bottom two percent of A, B, C and D scores, and “+” 
// signs to the top two percent of B, C and D scores (sorry, Mr. Cerise never gives an A+). Given 88, console.log 
// "Score: 88. Grade: B+". Given 61, log "Score: 61. Grade: D-" .
function moreAccurateGrades(grade) {
    grade = grade.toString();
    let plus = '';
    let minus = '';
    let letter = null;
    if (grade >= 90) {
        letter = 'A'
    } else if (grade >= 80) {
        letter = 'B'
    } else if (grade >= 70) {
        letter = 'C'
    } else if (grade >= 60) {
        letter = 'D'
    } else {
        letter = 'F'
    }
    if (grade < 98 && grade > 59) {
        if (grade.endsWith(8) || grade.endsWith(9)) {
            letter += "+";
        }
        if (grade.endsWith(1) || grade.endsWith(0)) {
            letter += "-"
        }
    }
    return `Score: ${ grade }. Grade: ${ letter }`
};
console.log(moreAccurateGrades(100));
console.log(moreAccurateGrades(91));
console.log(moreAccurateGrades(89));
console.log(moreAccurateGrades(81));
console.log(moreAccurateGrades(78));
console.log(moreAccurateGrades(70));
console.log(moreAccurateGrades(69));
console.log(moreAccurateGrades(60));
console.log(moreAccurateGrades(59));
console.log(moreAccurateGrades(51));