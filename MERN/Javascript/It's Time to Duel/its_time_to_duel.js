class Card {
    constructor(name, cost) {
        this.name = name;
        this.cost = cost;
    };
};

class Unit extends Card {
    constructor(name, cost, res, power) {
        super(name, cost);
        this.res = res;
        this.power = power;
    };

    attack(target) {
        console.log("--- ATTACK ---")
        target.res -= this.power;
        console.log(`${this.name} attacked ${target.name} and did ${this.power} damage.`);
    };
};

class Effect extends Card {
    constructor(name, cost, stat, magnitude, text) {
        super(name, cost);
        this.stat = stat;
        this.magnitude = magnitude;
        this.text = text;
    };

    play(target) {
        if (target instanceof Unit) {
            console.log('--- EFFECT CARD PLAYED ---')
            const current_stat = target[this.stat]
            target[this.stat] += this.magnitude;
            console.log(`${this.name} was played on ${target.name}`);            
            console.log(`*** Effects: ${this.text} ***`);
            console.log(`*** ${target.name}'s ${this.stat} went from ${current_stat} to ${target[this.stat]}! ***`);
        } else {
            throw new Error("Target must be a unit!");
        }
    };
};

/*     TURN 1     */
// Player 1 summons "Red Belt Ninja"
let redBeltNinja = new Unit("Red Belt Ninja", 3, 3, 4);

// Player 1 plays "Hard Algorithm" on "Red Belt Ninja"
const hard_algo = new Effect("Hard Algorithm", 2, "res", 3, "Increase target's resilience by 3");
hard_algo.play(redBeltNinja);
console.log("\n")



/*     TURN 2     */
// Player 2 summons "Black Belt Ninja"
let blackBeltNinja = new Unit("Black Belt Ninja", 4, 5, 4);

// Player 2 plays "Unhandled Promise Rejection" on "Red Belt Ninja"
const promise_rejection = new Effect("Unhandled Promise Rejection", 1, "res", -2, "Reduce target's resilience by 2");
promise_rejection.play(redBeltNinja);
console.log("\n")



/*     TURN 3     */
// Player 1 plays "Pair Programming" on "Red Belt Ninja"
const pair_programming = new Effect("Pair Programming", 3, "power", 2, "Increase target's power by 2");
pair_programming.play(redBeltNinja);
console.log("\n")

// Player 1 has "Red Belt Ninja" attack "Black Belt Ninja"
redBeltNinja.attack(blackBeltNinja);