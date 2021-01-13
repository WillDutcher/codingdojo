class BankAccount {
    constructor(balance = 0, intRate = 7.9) {
        this.balance = balance;
        this.intRate = intRate * .01;
    };

    deposit(amount) {
        this.balance += amount;
        return this;
    };

    withdraw(amount) {
        if (this.balance - amount < 0) {
            console.log('Insufficient funds: Charging a $5 fee.');
            this.balance -= 5;
        }
        this.balance -= amount;
        return this;
    }

    displayAccountInfo() {
        this.balance *= 1.00;
        this.balance = this.balance.toFixed(2);
        if (this.balance < 0) {
            console.log(`Balance: -$${Math.abs(this.balance)}`);
        } else {
            console.log(`Balance: $${this.balance}`);
        }
    }

    yieldInterest() {
        if (this.balance > 0) {
            this.balance += (this.balance * this.intRate);
            this.balance = this.balance.toFixed(2);
        }
        return this;
    }
}

// Create 2 accounts
const dylan = new BankAccount();
const ella = new BankAccount();

// To the first account, make 3 deposits and 1 withdrawal, then calc interest and display account info all in one line of code
dylan.deposit(1030.06).deposit(1000.78).deposit(1000.70).withdraw(1000.99).yieldInterest().displayAccountInfo();

// To the second account, make 2 deposits and 4 withdrawals, then calc interest and display the account's info all in one line of code.
ella.deposit(1000).deposit(1500).withdraw(500).withdraw(100).withdraw(500).withdraw(1400.01).yieldInterest().displayAccountInfo();