/*
Remove Blanks
Create a function that, given a string, returns all of that string’s contents, but without blanks. 
If given the string " Pl ayTha tF u nkyM usi c ", return "PlayThatFunkyMusic".
*/
console.log('*****     Remove Blanks     *****');
function removeBlanks(str) {
    return str.split(' ').join('')
};
const rbString1 = ' c a t ';
const rbString2 = ' Pl ayTha tF u nkyM usi c ';
const rbString3 = 'C   od    in  gD  o j        o';
console.log(removeBlanks(rbString1));
console.log(removeBlanks(rbString2));
console.log(removeBlanks(rbString3));


/*
Get Digits
Create a JavaScript function that given a string, returns the integer made from the string’s digits. 
Given "0s1a3y5w7h9a2t4?6!8?0", the function should return the number 1357924680.
*/
console.log('*****     Get Digits     *****');
function getDigits(str) {
    // if (Number(0)) {
    //     console.log('Zero is a number')
    // } else {
    //     console.log('Zero is NOT a number')                  // Makes no sense
    // }    
    // newStr = '';
    // for (let i=0; i<=str.length-1; i++) {
    //     console.log(`${ str[i] }: ${ str[i] % 1 === 0 }`)
    //     if (Number(str[i]) || str[i] === 0) {                // Number(0) returns false...why?
    //         newStr += str[i]
    //     }
    // }
    // return newStr;
    newStr = '';
    for (let i=0; i<=str.length-1; i++) {
        if (str[i] % 1 === 0 ) {
            newStr += str[i];
        }
    }
    return newStr;
}
console.log(getDigits('0s1a3y5w7h9a2t4?6!8?0'));

/*
Acronyms
Create a function that, given a string, returns the string’s acronym (first letters only, capitalized). 
Given " there's no free lunch - gotta pay yer way. ", return "TNFL-GPYW". 
Given "Live from New York, it's Saturday Night!", return "LFNYISN".
*/
console.log('*****     Acronyms     *****');
function acronyms(str) {
    let arr = str.split(" ");
    let newStr = '';
    for (let i=0; i<arr.length; i++) {
        if (arr[i]) {                                       // Only check if actual value exists; blanks skipped
            newStr += arr[i][0].toUpperCase();              // Add only the first capitalized letter to newStr
        }
    }
    return newStr;
}
acroStr1 = " there's no free lunch - gotta pay yer way. "
acroStr2 = "Live from New York, it's Saturday Night!"
console.log(acronyms(acroStr1));
console.log(acronyms(acroStr2));


/*
Count Non-Spaces
Accept a string and return the number of non-space characters found in the string. 
For example, given "Honey pie, you are driving me crazy", return 29 (not 35).
*/
console.log('*****     Count Non-Spaces     *****');
function countNonSpaces(str) {
    let count = 0;
    for (let i=0; i<str.length; i++) {
        if (str[i] !== ' ') {
            count++;
        }
    }
    return count;
}

cnsStr1 = 'Honey pie, you are driving me crazy';
cnsStr2 = 'I am trying to become a developer through the help of CodingDojo.'
console.log(countNonSpaces(cnsStr1));
console.log(countNonSpaces(cnsStr2));


/*
Remove Shorter Strings
Given a string array and value (length), remove any strings shorter than the length from the array.
*/
console.log('*****     Remove Shorter Strings     *****');
function removeShorterStrings(arr, len) {
    for (let i=arr.length-1; i>=0; i--) {
        if (arr[i].length < len) {
            for (let j=i; j<arr.length-1; j++) {
                let temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
            arr.pop();
        }
    }
    return arr;
};

rssStr1 = ['apple', 'banana', 'cantalope', 'date', 'elderberry', 'fig'];
rssStr2 = ['Atlanta', 'Baltimore', 'Chicago', 'Detroit', 'Edmonton', 'Flagstaff'];
console.log(removeShorterStrings(rssStr1, 6));
console.log(removeShorterStrings(rssStr2, 8));