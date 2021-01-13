class User {
    constructor(name, emailAddress) {
        this.name = name;
        this.email = emailAddress;
        this.account = new BankAccount(this.checkingBalance, this.savingsBalance, this.intRate);
    }
}

class BankAccount {
    constructor(checkingBalance = 0, savingsBalance = 0, intRate = 7.9) {
        this.checking = checkingBalance;
        this.savings = savingsBalance;
        this.intRate = intRate * .01;
    };

    deposit(acct, amount) {
        if (acct === 'savings') {
            this.savings += amount;
        } else {
            this.checking += amount;
        }
        return this;
    };

    withdraw(acct, amount) {
        if (acct === 'savings') {
            if (this.savings - amount < 0) {
                console.log('Insufficient funds: Charging a $10 fee.');
                this.savings -= 10;
            }
            this.savings -= amount;
            return this;
        } else {
            if (this.checking - amount < 0) {
                console.log('Insufficient funds: Charging a $5 fee.');
                this.checking -= 5;
            }
            this.checking -= amount;
            return this;
        }
    };

    transferMoney(otherUser, amount) {
        otherUser.account.checking = parseInt(otherUser.account.checking);            // Turn otherUser checking from object to integer
        this.withdraw('checking', amount);
        otherUser.account.deposit('checking', amount);
    }

    twoDecimalPlaces(amount) {
        return Number.parseFloat(amount).toFixed(2);
    }

    displayAccountInfo(user) {
        this.checking = this.twoDecimalPlaces(this.checking);
        this.savings = this.twoDecimalPlaces(this.savings);
        if (this.checking < 0) {
            console.log(`${user.name} Checking Balance: -$${Math.abs(this.checking)}`);
        } else if (this.checking >= 0) {
            console.log(`${user.name} Checking Balance: $${this.checking}`);
        }
        if (this.savings < 0) {
            console.log(`${user.name} Savings Balance: -$${Math.abs(this.savings)}`);
        } else if (this.savings >= 0) {
            console.log(`${user.name} Savings Balance: $${this.savings}\n`);
        }
    }

    yieldInterest() {
        if (this.checking > 0) {
            this.checking += (this.checking * this.intRate);
            this.checking = this.checking.toFixed(2);
        }
        return this;
    }

    yieldInterestSavings() {
        if (this.savings > 0) {
            this.savings += (this.savings * .075);
            this.savings = this.savings.toFixed(2);
        }
        return this;
    }
}

// Create 3 Instances
const alexei = new User('Alexei', 'alexei@example.org');
const brittani = new User('Brittani', 'brittanywithani@email.com');
const corwin = new User('Corwin', 'rogerzelazny@author.net');

// Make 3 deposits and 1 withdrawal then display checking balance for user 1
alexei.account.deposit('checking', 100).deposit('checking', 100).deposit('checking', 100).withdraw('checking', 10);
alexei.account.deposit('savings', 10);
alexei.account.displayAccountInfo(alexei);

// Have the second user make 2 deposits, 2 withdrawals, then display checking balance
brittani.account.deposit('checking', 100).deposit('checking', 100).withdraw('checking', 10).withdraw('checking', 10);
brittani.account.deposit('savings', 10);
brittani.account.displayAccountInfo(brittani);

// Have the third user make 1 deposit and 3 withdrawals, then display checking balance
corwin.account.deposit('checking', 100).withdraw('checking', 10).withdraw('checking', 10).withdraw('checking', 10);
corwin.account.deposit('savings', 10);
corwin.account.displayAccountInfo(corwin);

// Add a transferMoney method; have the first user transfer money to the third user and then print both users' checking balances
alexei.account.transferMoney(corwin, 5);
alexei.account.displayAccountInfo(alexei);
corwin.account.displayAccountInfo(corwin);

// Create 2 accounts
const dylan = new User('Dylan', 'dylansemail@fake.com');
const ella = new User('Ella', 'iamella@gmail.com');

// To the first account, make 3 deposits and 1 withdrawal, then calc interest and display account info all in one line of code
dylan.account.deposit('checking', 100).deposit('checking', 100).deposit('checking', 100).withdraw('checking', 10).yieldInterest().deposit('savings', 10).displayAccountInfo(dylan);

// To the second account, make 2 deposits and 4 withdrawals, then calc interest and display the account's info all in one line of code.
ella.account.deposit('checking', 1000.30).deposit('checking', 1500.57).withdraw('checking', 500.05).withdraw('checking', 100.94).withdraw('checking', 500.11).deposit('savings', 10.15).withdraw('checking', 1400.01).yieldInterest().displayAccountInfo(ella);

// Allow a user to have multiple accounts; update methods so the user has to specify which account they are withdrawing or depositing to
const frederic = new User('Frederic', 'fred@this.email');
frederic.account.deposit('checking', 3403.45).deposit('savings', 10000);
frederic.account.displayAccountInfo(frederic);
frederic.account.withdraw('checking', 1941.55).withdraw('savings', 8415);
frederic.account.displayAccountInfo(frederic);