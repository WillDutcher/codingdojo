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
};

var x = new SLL();

console.log(x.addFront("ABC"));         // Add "ABC" to call stack; (goes to bottom of stack)
console.log(x.addFront("DEF"));         // Add "DEF" on top of call stack; DEF => ABC
console.log(x.addFront("GHI"));         // Add "GHI" on top of call stack; GHI => DEF => ABC
console.log(x.removeFront());           // Removes from top of call stack; DEF => ABC
console.log(x.removeFront());           // Removes from top of call stack; ABC
console.log(x.front());                 // There is still a head node, so it will return the value ("ABC")
console.log(x.removeFront());           // Removes the last remaining node from call stack...this.head.next is now equal to null, which is returned