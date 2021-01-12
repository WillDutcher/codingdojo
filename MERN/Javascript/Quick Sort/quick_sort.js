const quicksort = (arr, left = 0, right = arr.length - 1) => {      // pass array, left boundary initiated at 0 and right boundary initiated at length - 1 re: indexing
    if (left >= right) {                                // If the left boundary number is greater than the right, then...
        return;                                         // return; do not go further
    }
    const pivot = arr[Math.floor((left + right) / 2)];  // set arbitrary pivot to be at the halfway index point of the array
    const index = partition(arr, left, right, pivot);   // get the index by calling partition and passing array, left, right, and pivot numbers
    quicksort(arr, left, index - 1);                    // recursively call quicksort on itself to sort left side
    quicksort(arr, index, right);                       // recursively call quicksort on itself to sort right side
    return arr;                                         // when sorting is complete, return the array
}

const partition = (arr, left, right, pivot) => {
    console.log("Working with array as: " + arr.toString());
    console.log("Enter partition: left, right, pivot: " + left, right, pivot)
    while (left <= right) {                             // begin by comparing left against right; while it is lower, do this...
        while (arr[left] < pivot && left <= right) {    // while left is less than pivot number and less than or equal to the right, do this...
            console.log("Left: " + arr[left] + ": " + pivot)
            left++;                                     // increase left index by 1 to keep checking up to the pivot
        }
        while (arr[right] > pivot) {                    // while the right is still greater than the pivot number, do this...
            console.log("Right: " + arr[right] + ": " + pivot)
            right--;                                    // decrease the right index by 1 to keep checking up to the pivot
        }
        if (left <= right) {                            // if the left is less than or equal to the right, do this...
            [arr[left], arr[right]] = [arr[right], arr[left]];      // swap the left and right values, and then...
            left++;                                     // increment left index by one
            right--;                                    // decrement right index by one
        }
    }
    console.log("pivot will be arr[" + Math.floor((left + right) / 2) + "], " + arr[Math.floor((left + right) / 2)]);
    console.log("\n");
    return left;                                        // return the left value back to the quick sort to set a new left boundary
}


let myArray = [5, 4, 6, 1, 9, 0, 3, 7, 2, 8];
let myArray2 = [1, 2, 6, 3, 7, 9, 0, 4, 5, 8];
console.log(quicksort(myArray));
console.log(quicksort(myArray2));

/*
Consider:
    Where will the recursive call be?
        Within the quicksort function when it must quicksort on left and right sections of array
    When do we know a portion of the array has been sorted?
        It runs through partition function and returns a new left value
    When do we know the entire array has been sorted?
        When the while conditions have been settled and left < right

Bonus 1:
Different strategies are used to choose the pivot. Any pivot would work, so why not just choose an easy pivot,
such as the left-most value? The answer is that the time complexity could be greatly increased if we were to
call quicksort on an array that is already sorted. Diagram this out and determine why this is true.
    If it was already pre-sorted, the quicksort and partition functions are still run, taking time to run when it is unnecessary

Bonus 2:
What is the Big O time complexity of this algorithm?
    Given this is a 'divide and conquer' approach, the Big O time complexity would be: O(N*log(N))

Bonus 3:
The Big O time complexity of quicksort is actually not impressive at all. So why is it called quicksort?
Remember that Big O is for the worst case scenario. In this case, the worst case scenario is unlikely to be encountered - it's when
we try to quicksort a sorted array and assign the pivot to an edge value. We use Big Omega to talk about the best case scenario and
Big Theta to talk about the average case.  What are the Big Omega and Big Theta time complexities of quicksort?
    No clue. I don't believe this was taught exceptionally well.
*/