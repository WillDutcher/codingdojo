const mongoose = require("mongoose");

const UserSchema = new mongoose.Schema({
	name: String,
	age: Number
});

const User = mongoose.model("User", UserSchema);

module.exports = User;


getRandom(req,res) {
	console.log("getRandom method executed");
	// Get the count of all users
	Joke.count().exec((err, count) => {
		
		// Get a random entry
		var random = Math.floor(Math.random() * count)
		// Again query all users but only fetch one offset by our random #
		//findOne() is built-in to Mongoose
		Joke.findOne().skip(random).exec((err, result) => {
			if(err){
				return res.json(err)
			}
			// Tada! random user
			return res.json(result);
		})
	})
}