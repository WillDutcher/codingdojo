const mongoose = require('mongoose');
const bcrypt = require('bcrypt');

const UserSchema = new mongoose.Schema({
    firstName: {
        type: String,
        required: [ true, "Please enter your first name" ],
        validate: {
            validator: (val) => /^[A-Za-z][A-Za-z\'\-]+([\ A-Za-z][A-Za-z\'\-]+)*/.test(val),
            message: "Please enter a valid first name"
        }
    },
    lastName: {
        type: String,
        required: [ true, "Please enter your last name" ],
        validate: {
            validator: (val) => /^[A-Za-z][A-Za-z\'\-]+([\ A-Za-z][A-Za-z\'\-]+)*/.test(val),
            message: "Please enter a valid last name"
        }
    },
    email: {
        type: String,
        required: [ true, "Please enter your email address" ],
        validate: {
            validator: (val) => /^([\w-\.]+@([\w-]+\.)+[\w-]+)?$/.test(val),
            message: "Please enter a valid email"
        }
    },
    address: {
        street1: {
            type: String,
            required: [ true, "Please enter your street address" ],
            validate: {
                validator: (val) => /^\d+\s[A-z]+\s[A-z]+/.test(val),
                message: "Please enter a valid street address"
            }
        },
        street2: {
            type: String,
        },
        city: {
            type: String,
            required: [ true, "Please enter your city" ],
            minlength: [ 3, "City must be at least 3 characters" ],
            validate: {
                validator: (val) => /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/.test(val),
                message: "Please enter a valid city"
            }
        },
        state: {
            type: String,
            required: [ true, "Please enter your state" ],
            enum: [ '-',
                    'AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA',
                    'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD',
                    'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ',
                    'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC',
                    'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY'
            ]
        },
        zip: {
            type: String,
            required: [ true, "Please enter your zip code" ],
            minlength: [ 5, "Zip code must be at least 5 digits long" ],
            validate: {
                validator: (val) => /\b\d{5}(?:-\d{4})?\b/.test(val),
                message: "Please enter a valid zip code"
            }
        }
    },
    password: {
        type: String,
        required: [ true, "Password is required" ],
        validate: {
            validator: (val) => /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/.test(val),
            message: "Password must be at least 8 characters long and contain at least one: digit, lowercase, and uppercase"
        }
    }
}, { timestamps: true });

UserSchema.virtual("confirmPassword")
    .get(() => this._confirmPassword)
    .set(value => (this._confirmPassword = value));

UserSchema.pre("validate", function(next) {
    if (this.password !== this.confirmPassword) {
        this.invalidate("confirmPassword", "Password must match confirm password");
    }
    next();  // Successfully compared - move on to the next step in the validation process
    });

UserSchema.pre("save", function(next) {
    bcrypt.hash(this.password, 10)
        .then(hash => {
            this.password = hash;
            next();
        });
});

const User = mongoose.model("User", UserSchema);

module.exports = User;