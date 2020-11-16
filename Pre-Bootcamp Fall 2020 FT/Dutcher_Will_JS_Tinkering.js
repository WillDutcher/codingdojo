/* We want an app that once it measure's a kid's height, can display
   whether the child is tall enough to ride the rollercoaster. We're
   tasked with building the function that will display the right message
   to the child.
*/

var childHeight = 0;

function displayIfChildIsAbleToRideTheRollerCoaster(childHeight) {
    if (childHeight > 52) {
        console.log("Get on that ride, kiddo!");
    } else {
        console.log("Sorry, kiddo. Maybe next year.");
    }
}

// Test
displayIfChildIsAbleToRideTheRollerCoaster(50);
displayIfChildIsAbleToRideTheRollerCoaster(52);
displayIfChildIsAbleToRideTheRollerCoaster(54);