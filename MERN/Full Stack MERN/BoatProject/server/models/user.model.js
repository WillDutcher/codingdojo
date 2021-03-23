const mongoose = require("mongoose");
const bcrypt = require("bcrypt");

const UserSchema = new mongoose.Schema(
    {
        firstName: {
            type: String,
            required: [ true, "First name required."]
        },
        lastName: {
            type: String,
            required: [ true, "Last name required."]
        },
        email: {
            type: String,
            required: [ true, "Email required."],
            validate: {
                // regex
                validator: (val) => /^([\w-\.]+@([\w-]+\.)+[\w-]+)?$/.test(val),
                message: "Please enter valid email."
            },
        },
        password: {
            type: String,
            required: [ true, "Password required."],
            minlength: [ 8, "Password must be 8 chars+ long" ]
        }
    },
    { timestamps: true }
);


// Create virtual field that can be compared/validated but does NOT
// get added to db when saved; will create getter/setter methods for confirmPassword field
UserSchema.virtual("confirmPassword")
    .get(() => this._confirmPassword)
    .set(value => (this._confirmPassword = value));


// Validation/comparison happens here
// pre "hook" allows it to run before other validations
UserSchema.pre("validate", function(next) {
    if (this.password !== this.confirmPassword) {
        this.invalidate("confirmPassword", "Password must match confirm password");
    }
    next();
});

// Hash/encrypt pw prior to saving to db
// Replace orig pw val with hashed/encrypted pw we just created
UserSchema.pre("save", function(next) {
    bcrypt.hash(this.password, 10).then(hash => {
        this.password = hash;
        next();
    });
});

// will create a new collection in db called "users"
// will lowercase our string and make it plural automaticaly for us
// despite us calling it singular "User" below
const User = mongoose.model("User", UserSchema);

module.exports = User;