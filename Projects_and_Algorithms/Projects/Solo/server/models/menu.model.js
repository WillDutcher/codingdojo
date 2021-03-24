const mongoose = require("mongoose");

const MenuSchema = new mongoose.Schema(
  {
    pizza: {
      size: {
        type: String,
        required: [true, "Please select pizza size"],
        enum: ["Personal", "Small", "Medium", "Large", "Extra Large"],
      },
      crust: {
        type: String,
        required: [true, "Please select pizza crust type"],
        enum: ["Normal", "Thin", "Pan", "Stuffed"],
      },
      cheese: {
        type: String,
        required: [true, "Please select amount of cheese"],
        enum: ["Light", "Normal", "Extra", "Double"],
      },
      sauce: {
        type: String,
        required: [true, "Please select amount of sauce"],
        enum: ["Light", "Normal", "Extra", "Double"],
      },
      toppings: {
        protein: {
          pepperoni: {
            type: Boolean,
            default: false,
          },
          sausage: {
            type: Boolean,
            default: false,
          },
          ham: {
            type: Boolean,
            default: false,
          },
          chicken: {
            type: Boolean,
            default: false,
          },
          bacon: {
            type: Boolean,
            default: false,
          },
          impossibleMeat: {
            type: Boolean,
            default: false,
          },
        },
        veggies: {
          onion: {
            type: Boolean,
            default: false,
          },
          mushroom: {
            type: Boolean,
            default: false,
          },
          greenPepper: {
            type: Boolean,
            default: false,
          },
          olive: {
            type: Boolean,
            default: false,
          },
          jalapeno: {
            type: Boolean,
            default: false,
          },
          pineapple: {
            type: Boolean,
            default: false,
          },
        },
      },
    },
    sides: {
      breadsticks: {
        type: Boolean,
        default: false,
      },
      cheesesticks: {
        type: Boolean,
        default: false,
      },
    },
    desserts: {
      tiramasu: {
        type: Boolean,
        default: false,
      },
      canoli: {
        type: Boolean,
        default: false,
      },
    },
    drinks: {
<<<<<<< HEAD
        type: String,
        enum: [ '-', 'Coke', 'Diet Coke', 'Dr. Pepper', 'Diet Dr. Pepper', 'Sprite', 'Fanta Orange', 'Barq\'s Root Beer' ]
    },
    basePrice: {
        type: Number,
        default: 7
    },
    toppingPrice: {
        type: Number,
        default: 2
    },
    quantity: {
        type: Number
    }
}, { timestamps: true });
=======
      type: String,
      enum: [
        "-",
        "Coke",
        "Diet Coke",
        "Dr. Pepper",
        "Diet Dr. Pepper",
        "Sprite",
        "Fanta Orange",
        "Barq's Root Beer",
      ],
    },
  },
  { timestamps: true }
);
>>>>>>> 2b7e7b94b3973307276124e85f29a017348ca8d8

const Menu = mongoose.model("Menu", MenuSchema);

module.exports = Menu;
