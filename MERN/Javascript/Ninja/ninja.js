class Ninja {
    constructor(name, health=100, speed=3, strength=3) {
        this.name = name;
        this.health = health;
        this.speed = speed;
        this.strength = strength;
    }

    sayName() {
        console.log("Name: " + this.name);
    }

    showStats() {
        console.log(`Name: ${this.name}\nStrength: ${this.strength}\nSpeed: ${this.speed}\nHealth: ${this.health}`);
    }

    drinkSake() {
        let current_health = this.health;
        this.health += 10;
        console.log(`${this.name}'s health went from ${current_health} to ${this.health}.`);
    }
}

const ninja1 = new Ninja("Hyabusa");
ninja1.sayName();
ninja1.showStats();
ninja1.drinkSake();