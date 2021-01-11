// Problem 1
const cars = ['Tesla', 'Mercedes', 'Honda']
const [ randomCar ] = cars
const [ ,otherRandomCar ] = cars
//Predict the output
console.log(randomCar)
console.log(otherRandomCar)

/* PREDICTION */
// logs 'Tesla' -- takes first item within array and sets to randomCar
// logs 'Mercedes' -- skips first item in array and sets second item to otherRandomCar


// Problem 2
const employee = {
    name: 'Elon',
    age: 47,
    company: 'Tesla'
}
const { name: otherName } = employee;
//Predict the output
console.log(name);
console.log(otherName);

/* PREDICTION */
// will give an error because the destructured reassignment assigns the value of employee.name to otherName
// this means that name does not exist, because it was never explicitly declared
// thus the first console.log will error out because it won't find the variable name (ReferenceError)


// Problem 3
const person = {
    name: 'Phil Smith',
    age: 47,
    height: '6 feet'
}
const password = '12345';
const { password: hashedPassword } = person;  
//Predict the output
console.log(password);
console.log(hashedPassword);

/* PREDICTION */
// logs '12345'
// logs 'undefined'; it will look in person for the 'password' key, but it won't find it
// it creates the 'hashedPassword' variable to a variable that doesn't exist, yielding an undefined return


// Problem 4
const numbers = [8, 2, 3, 5, 6, 1, 67, 12, 2];
const [,first] = numbers;
const [,,,second] = numbers;
const [,,,,,,,,third] = numbers;
//Predict the output
console.log(first == second);
console.log(first == third);

/* PREDICTION*/
// first = 2; second = 5; third = 2
// logs false because 2 !== 5
// logs true because 2 === 2


// Problem 5
const lastTest = {
    key: 'value',
    secondKey: [1, 5, 1, 8, 3, 3]
}
const { key } = lastTest;
const { secondKey } = lastTest;
const [ ,willThisWork] = secondKey;
//Predict the output
console.log(key);
console.log(secondKey);
console.log(secondKey[0]);
console.log(willThisWork);

/* PREDICTION */
// logs 'value' because key = 'value'
// logs whole array of ['1, 5, 1, 8, 3, 3'] because secondKey = entire array vice just a single number in it
// logs '1' because 1 is the first number at position zero in the secondKey array
// logs '5' because it looks at the secondKey array; it wants to skip the first value and assign the
//   second value to the willThisWork variable, which equals 5