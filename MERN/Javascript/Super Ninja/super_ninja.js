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

class Sensei extends Ninja {
    constructor(name, health=200, strength=10, speed=10, wisdom=10) {
        super(name, health, strength, speed);
        this.wisdom = wisdom;
    }

    speakWisdom() {
        console.log(`${this.name} says: "What one programmer can do in one month, two programmers can do in two months."`);
    }
}

const ninja1 = new Ninja("Hyabusa");
ninja1.sayName();
ninja1.showStats();
ninja1.drinkSake();

const superSensei = new Sensei("Master Splinter");
superSensei.showStats();
superSensei.drinkSake();
superSensei.speakWisdom();