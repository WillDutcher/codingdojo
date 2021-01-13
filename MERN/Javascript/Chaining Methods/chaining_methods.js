class User {
    constructor(name, emailAddress) {
        this.name = name;
        this.email = emailAddress;
        this.accountBalance = 0;
    }

    makeDeposit(amount) {
        this.accountBalance += amount;
        return this;
    }

    makeWithdrawal(amount) {
        this.accountBalance -= amount;
        return this;
    }

    displayBalance() {
        console.log(`Name: ${this.name}, Balance: $${this.accountBalance}`);
    }

    transferMoney(otherUser, amount) {
        this.accountBalance -= amount;
        otherUser.accountBalance += amount;
        // return [this.name, this.accountBalance, otherUser.name, otherUser.accountBalance]; would we ever need this?
    }
}


// Create 3 Instances
const alexei = new User('Alexei', 'alexei@example.org');
const brittani = new User('Brittani', 'brittanywithani@email.com');
const corwin = new User('Corwin', 'rogerzelazny@author.net');

// Make 3 deposits and 1 withdrawal then display balance for user 1
alexei.makeDeposit(1421).makeDeposit(1387).makeDeposit(1409).makeWithdrawal(605);
alexei.displayBalance();

// Have the second user make 2 deposits, 2 withdrawals, then display balance
brittani.makeDeposit(1683).makeDeposit(2408).makeWithdrawal(1300).makeWithdrawal(1089);
brittani.displayBalance();

// Have the third user make 1 deposit and 3 withdrawals, then display balance
corwin.makeDeposit(8983).makeWithdrawal(2778).makeWithdrawal(2608).makeWithdrawal(3599);
corwin.displayBalance();

// Add a transferMoney method; have the first user transfer money to the third user and then print both users' balances
alexei.transferMoney(corwin, 1375);
alexei.displayBalance();
corwin.displayBalance();