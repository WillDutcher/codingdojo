var mySortedArr = [1, 3, 5, 7, 9, 13, 21];

class Node {
  constructor(value) {
    this.val = value;
    this.left = null;
    this.right = null;
  }
}

class BST {
  constructor() {
    this.root = null;
  }

  appendNode() {
    if (this.root) {
      var runner = this.root;
      while (runner) {
        if (node.val < runner.val) {
          if (runner.left) {
            runner = runner.left;
          } else {
            runner.left = node;
            runner = null;
          }
        } else {
          if (runner.right) {
            runner = runner.right;
          } else {
            runner.right = node;
            runner = null;
          }
        }
      }
    } else {
      this.root = node;
    }
    return this.root;
  }
}

var myBST = new BST();

myBST.appendNode(new Node(7));
myBST.appendNode(new Node(3));
myBST.appendNode(new Node(1));
myBST.appendNode(new Node(5));
myBST.appendNode(new Node(9));
myBST.appendNode(new Node(13));
myBST.appendNode(new Node(21));
