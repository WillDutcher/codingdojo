class User {
    constructor(name, emailAddress) {
        this.name = name;
        this.email = emailAddress;
        this.accountBalance = 0;
    }

    makeDeposit(amount) {
        this.accountBalance += amount;
    }

    makeWithdrawal(amount) {
        this.accountBalance -= amount;
    }

    displayBalance(amount) {
        console.log(`Name: ${this.name}, Balance: $${this.accountBalance}`);
    }

    transferMoney(otherUser, amount) {
        this.accountBalance -= amount;
        otherUser.accountBalance += amount;
    }
}

// Create 3 Instances
const alexei = new User('Alexei', 'alexei@example.org');
const brittani = new User('Brittani', 'brittanywithani@email.com');
const corwin = new User('Corwin', 'rogerzelazny@author.net');

// Make 3 deposits and 1 withdrawal then display balance for user 1
alexei.makeDeposit(1421);
alexei.makeDeposit(1387);
alexei.makeDeposit(1409);
alexei.makeWithdrawal(605);
alexei.displayBalance();

// Have the second user make 2 deposits, 2 withdrawals, then display balance
brittani.makeDeposit(1683);
brittani.makeDeposit(2408);
brittani.makeWithdrawal(1300);
brittani.makeWithdrawal(1089);
brittani.displayBalance();

// Have the third user make 1 deposit and 3 withdrawals, then display balance
corwin.makeDeposit(8983);
corwin.makeWithdrawal(2778);
corwin.makeWithdrawal(2608);
corwin.makeWithdrawal(3599);
corwin.displayBalance();

// Add a transferMoney method; have the first user transfer money to the third user and then print both users' balances
alexei.transferMoney(corwin, 1375);
alexei.displayBalance();
corwin.displayBalance();