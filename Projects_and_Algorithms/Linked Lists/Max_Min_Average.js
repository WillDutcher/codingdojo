class Node {
    constructor(value) {
        this.value = value;
        this.next = null;
    }
}

class SLL {
    constructor() {
        this.head = null;
    };

    addFront(value) {
        let newNode = new Node(value);      // creating new node
        newNode.next = this.head        // connection between newNode to current head node
        this.head = newNode;            // reassinging this Singly Linked List's head to newNode
        return this;                    // returning 'this' allos for chaining methods together
    };

    removeFront() {
        if (this.head) {                // if there is an existing head node...
            this.head = this.head.next  // reassign the head to the next node
        }
        return this.head;               // return the list head node
    };

    front() {
        if (this.head) {                // if there is an existing head node...
            return this.head.value      // return the node's value, not the node, itself...
        }
        return null;                    // ...else return null
    };

    contains(value) {                   // Check to see if value is anywhere in array
        let runner = this.head;         // Assign 'runner' variable as the head of the instance; using this to check against any other nodes
        while (runner) {                // While there is a head...
            if (runner.value === value) {   // If the value of the runner.value is equal to the value argument passed in to the contains method...
                console.log(`${ value } found!`)
                return true;            // Return true, per instructions and hop out of the while loop
            } else {
                runner = runner.next;   // Otherwise, keep going and assign the next head as the runner, and check again until end of loop, if necessary
            }
            console.log(`${ value } not found`);
            return false;               // If end of loop and value not found in the array, return false to end the loop
        }
    };

    length() {                          // returns number of nodes in the list
        let runner = this.head;         // Assign 'runner' variable as the head of the instance; using this to check against any other nodes
        let count = 0;                  // initialize count to 0
        while (runner) {                // While there is a head that is not null...
            console.log(`runner: ${ runner.value } -> runner.next: ${ JSON.stringify(runner.next) }`); // show value of current head then what it's pointing to
            count++;                    // Increase the count
            runner = runner.next;       // Keep going and assign the next head as the runner, and check again until end of loop
        }
        return count;
    };

    display() {                         // Return a string containing all list values
        let runner = this.head;         // Assign 'runner' variable as the head of the instance; using this to check against any other nodes
        let myString = '';
        let count = this.length();
        while (runner) {
            myString += runner.value + ' ';
            runner = runner.next;
        }
        if (count > 1) {
            return `${ count } items: ${ myString}`
        } else {
            return `${ count } item: ${ myString }`;  
        }
    };

    max() {
        let max = this.head.value;
        let runner = this.head;
        while (runner) {
            if (runner.value > max) {
                max = runner.value;
            }
            runner = runner.next;
        }
        return `max: ${ max }`;
    };

    min() {
        let min = this.head.value;
        let runner = this.head;
        while (runner) {
            if (runner.value < min) {
                min = runner.value;
            }
            runner = runner.next;
        }
        return `min: ${ min }`;
    };

    average() {
        let average = 0;
        let count = 0;
        let sum = 0;
        let runner = this.head;
        while (runner) {
            sum += runner.value;
            count++;
            runner = runner.next;
        }
        average = sum / count;
        return `average: ${ average }`;
    };
};

var x = new SLL();
var y = new SLL();

console.log(x.addFront("ABC"));         // Add "ABC" to call stack; (goes to bottom of stack)
console.log(x.addFront("DEF"));         // Add "DEF" on top of call stack; DEF => ABC
console.log(x.addFront("GHI"));         // Add "GHI" on top of call stack; GHI => DEF => ABC
console.log(x.removeFront());           // Removes from top of call stack; DEF => ABC
console.log(x.removeFront());           // Removes from top of call stack; ABC
console.log(x.front());                 // There is still a head node, so it will return the value ("ABC")
console.log(x.removeFront());           // Removes the last remaining node from call stack...this.head.next is now equal to null, which is returned
console.log(x.addFront("ABC"));         // Add "ABC" to call stack; (goes to bottom of stack)
console.log(x.addFront("DEF"));         // Add "DEF" on top of call stack; DEF => ABC
console.log(x.addFront("GHI"));         // Add "GHI" on top of call stack; GHI => DEF => ABC
console.log(x.contains('GHI'));         // Check contains('GHI'); should return true
console.log(x.contains('XYZ'));         // Check contains('XYZ'); should return false
console.log(x.length());                // Get length of instance (should be 3)
console.log(x.display());               // Display all values in object

console.log(y.addFront(87));
console.log(y.addFront(8));
console.log(y.addFront(75));
console.log(y.addFront(85));
console.log(y.addFront(1));
console.log(y.addFront(42));
console.log(y.addFront(22));
console.log(y.addFront(93));
console.log(y.addFront(4));
console.log(y.addFront(83));
console.log(y.max());
console.log(y.min());
console.log(y.average());
console.log(y.addFront(160));
console.log(y.max());
console.log(y.min());
console.log(y.average());