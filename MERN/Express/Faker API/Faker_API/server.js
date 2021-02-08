const express = require("express");
const faker = require("faker");
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));



/***** Create classes *****/
class User {
    constructor() {
        this._id = faker.random.uuid();
        this.firstName = faker.name.firstName();
        this.lastName = faker.name.lastName();
        this.phoneNumber = faker.phone.phoneNumber();
        this.email = faker.internet.email();
        this.password = faker.internet.password();
    }
}

class Company {
    constructor(address) {
        this._id = faker.random.uuid();
        this.name = faker.company.companyName();
        this.address = {
            street: faker.address.streetAddress(),
            city: faker.address.city(),
            state: faker.address.state(),
            zipCode: faker.address.zipCode(),
            country: 'United States'
        }        
    }
}



/***** Routes to access faker data *****/
// Standard 'is it working' route; can delete later
app.get("/api", (req, res) => {
    console.log(req.body);
    res.send("Working");
});

// Get new user
app.get('/api/users/new', (req,res) => {
    const newUser = new User();
    return res.json({newUser: newUser});
});

// Get new company
app.get("/api/companies/new", (req, res) => {
    const newCompany = new Company();
    return res.json({newCompany: newCompany});
});

// Get new user and company
app.get("/api/user/company", (req, res) => {
    const newUser = new User()
    const newCompany = new Company();
    return res.json({newUser: newUser, newCompany: newCompany})
});



// Ensure port is active/listening
const server = app.listen(8000, () => 
    console.log(`Server is ready on port ${server.address().port}`)
);