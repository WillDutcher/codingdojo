const { nodeInternals } = require("stack-utils");

class BTNode {                                              // Binary tree node class creation
    constructor(value) {                                    // Constructor takes in a value
        this.val = value;                                   // this.val = passed in value
        this.left = null;                                   // Initiates this.left to null
        this.right = null;                                  // Initiates this.right to null
    };                                                      // End constructor
};                                                          // End BTNode  class

class BST {                                                 // Binary Search Tree class creation
    builder = () => {                                       // builder takes in no values
        this.root = null;                                   // Constructor initiates null value to this.root
    }                                                       // End builder function

    add = (val) => {                                        // Add value to tree
        if (this.root) {                                    // If we have a root...
            let runner = this.root;                         // Create a runner, starting from root
            while (runner) {                                // While a runner (this.root) exists...
                if (val < runner.val) {                     // If the passed in value is less than the value runner is on...
                    if (runner.left) {                      // If runner.left has a value (is not null)...
                        runner = runner.left;               // Assign runner.left to runner
                    } else {                                // Else no runner.left exists, so create one
                        runner.left = new BTNode(val);         // Create a NEW runner.left node
                        return this;                        // Return this (done adding the new node(s))
                    }                                       // End if (runner.left)
                } else {                                    // Else val must be greater than runner.left
                    if (runner.right) {                     // If runner.right has a value (is not null)...
                        runner = runner.right;              // Assign runner.right to runner
                    } else {                                // Else no runner.right exists, so create one
                        runner.right = new BTNode(val);       // Create a NEW runner.right node
                        return this;                        // Return this (done adding the new node(s));
                    }                                       // End if (runner.right)
                }                                           // End if (val < runner.val)
            }                                               // End while (runner)
        } else {                                            // Else no root exists...
            this.root = new BTNode(val);                      // Create/establish a root!
        }                                                   // End if (this.root)
        return this.root;                                   // Return this.root after creating new one
    }                                                       // End add function

    contains = (val) => {                                   // Determine if passed in value is in tree
      let runner = this.root;                               // Create a runner, starting from root
      console.log("\n\n-----  CHECKING IF TREE CONTAINS " + val + "  -----")
      while (runner) {                                      // While a runner (this.root) exists...
        console.log(runner.val)
        if (val === runner.val) {                           // If the runner value is equal to the passed in value...
          return true;                                      // ...Then the number is in the tree; return true
        } else if (val < runner.val) {                      // Else the runner value is less than the passed in value...
            if (!runner.left) {                             // If there is nothing to the left...
                return false;                               // Number not in tree; return false
            }                                               // End if (!runner.left)
            console.log("<--")
            runner = runner.left;                           // Move runner on to the next left node
        } else {                                            // Else runner value must be greater than val
            if (!runner.right) {                            // If there is nothing to the right...
                return false;                               // Number not in tree; return false
            }                                               // End if (!runner.right)
            console.log("-->")
            runner = runner.right;                          // Move runner on to the next right node
        }                                                   // End if (val === runner.value)
      }                                                     // End while (runner)
      return false;                                         // Tree has been traversed; number not present so return false
    };                                                      // End contains function

    min = () => {
      let runner = this.root;                               // Create a runner, starting from root
      let min = this.root.val;                              // Set root value as min to start
      while (runner.left) {                                 // While there is a node to the left...
        if (runner.left.val < min) {                        // If the number to the left is lower...
            min = runner.left.val;                          // Assign min to the new value to the left
        }                                                   // End if (runner.left.val < min)
        runner = runner.left;                               // Move the runner to the next left node
      }                                                     // End while (runner.left)
      return `Smallest number in tree: ${ min }`;           // Min has been found so return it
    };                                                      // End min function

    max = () => {
      let runner = this.root;                               // Create a runner, starting from root
      let max = this.root.val;                              // Set root value as max to start
      while (runner.right) {                                // While there is a node to the right...
        if (runner.right.val > max) {                       // If the number to the right is lower...
            max = runner.right.val;                         // Assign max to the new value to the right
        }                                                   // End if (runner.right.val < max)
        runner = runner.right;                              // Move the runner to the next right node
      }                                                     // End while (runner.right)
      return `Largest number in tree: ${ max }`;            // max has been found so return it
    };                                                      // End max function

    size = () => {                                          // Get size of tree (number of nodes)
      let runner = this.root;                               // Create a runner, starting from root
      if (runner === null) {                                // If runner is null...
        return 0;                                           // Size of tree is zero
      }                                                     // End if (runner === null)
      
      const sizeRecursion = (runner) => {                   // Create recursive function to use to get size, pass in runner
        if (!runner) {                                      // If there is no runner...
            return 0;                                       // Then there's zero nodes, so return zero
        }                                                   // End if (!runner)
        return 1 + sizeRecursion(runner.left) + sizeRecursion(runner.right);    // Add one for each time sizeRecursion is run to left or right
      }                                                     // End sizeRecursion function
      return `The size of the tree is ${ sizeRecursion(this.root)} nodes`;      // Return the total size of the binary tree
    };                                                      // End size function

    isEmpty = () => {                                       // Determine if tree is empty or not
        if (this.root) {                                    // If there is a root (e.g. not null)...
            return false;                                   // Then it's not empty; return false
        }                                                   // End (this.root)
        return true;                                        // Otherwise, if there's no root, there's no nodes, so it's empty; return true
    };                                                      // End isEmpty function
};



// Create new binary search tree
let sampleTree = new BST();
let sampleTree2 = new BST();

// Add nodes to tree
console.log(sampleTree.add(7));
console.log(sampleTree.add(5));
console.log(sampleTree.add(3));
console.log(sampleTree.add(6));
console.log(sampleTree.add(4));
console.log(sampleTree.add(1));
console.log(sampleTree.add(2));
console.log(sampleTree.add(13));
console.log(sampleTree.add(11));
console.log(sampleTree.add(22));
console.log(sampleTree.add(16));
console.log(sampleTree.add(21));

// Check numbers to see if they're in the tree
console.log(sampleTree.contains(19));
console.log(sampleTree.contains(11));
console.log(sampleTree.contains(21));
console.log(sampleTree.contains(2));

// Find smallest number
console.log(sampleTree.min());

// Find largest number
console.log(sampleTree.max());

// Get size of tree
console.log(sampleTree.size());
console.log(sampleTree2.size());

// Determine if tree is empty
console.log(sampleTree.isEmpty());
console.log(sampleTree2.isEmpty());