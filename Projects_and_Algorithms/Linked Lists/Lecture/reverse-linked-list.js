class Node {
    constructor(value) {
        this.val = value;
        next: null;
    }
};

var nodeA = new Node(10);
var nodeB = new Node(10);
var nodeC = new Node(10);
var nodeD = new Node(10);

class SLL {
    constructor() {
        this.head = null;
    }

    appendNode(node) {
        if (this.head) {
            let runner = this.head;
            while (runner.next) {
                runner = runner.next;
            }
            runner.next = node;                         // Now we're at the node right before it points to null
        } else {
            this.head = node;
        }
    }
}

let mySinglyLinkedList = new SLL();

mySinglyLinkedList.appendNode(new Node(10));
let myArr = [40, 49, 47, 1, 16, 24, 47, 33, 20, 14];

for (let num of myArr) {
    mySinglyLinkedList.appendNode(new Node(num));
}

// console.log(mySinglyLinkedList.head.next.next.next.val);




function reverseLinkedList(head) {
    var previous = null;
    var current = head;
    var following = head;
    while (current) {
        following = following.next;
        current.next = previous;
        previous = current;
        current = following;
    }
    return previous;
}
console.log("*****")
console.log(mySinglyLinkedList.head);
console.log("*****\n")
console.log(reverseLinkedList(mySinglyLinkedList.head))