import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';

const Register = (props) => {
    const [ firstName, setFirstName ] = useState("");
    const [ lastName, setLastName ] = useState("");
    const [ email, setEmail ] = useState("");
    const [ street1, setStreet1 ] = useState("");
    const [ street2, setStreet2 ] = useState("");
    const [ city, setCity ] = useState("");
    const [ state, setState ] = useState("");
    const [ zip, setZip ] = useState("");
    const [ password, setPassword ] = useState("");
    const [ confirmPassword, setConfirmPassword ] = useState("");
    const [ confirmReg, setConfirmReg ] = useState("");
    const [ errors, setErrors ] = useState({});
    const [ setErrorMessage ] = useState("");

    const registerUser = (e) => {
        e.preventDefault();

        const newUser = {
            firstName,
            lastName,
            email,
            address: {
                street1,
                street2,
                city,
                state,
                zip
            },
            password,
            confirmPassword
        };

        axios.post('http://localhost:8000/api/user/register', newUser, {
            withCredentials: true
        })
        .then((res) => {
            console.log(res.data)
            navigate('/');
            // setFirstName("");
            // setLastName("");
            // setEmail("");
            // setStreet1("");
            // setStreet2("");
            // setCity("");
            // setState("");
            // setZip("");
            // setPassword("");
            // setConfirmPassword("");
            // setErrors({});
            // setConfirmReg("You're registered! Now order some food!");

            // axios.post("http://localhost:8000/api/user/login", {
            // email,
            // password
            // },
            // {
            //     withCredentials: true
            // })
            // .then((res) => {
            //     console.log(res.data);
            //     alert("You have successfully logged in!");
            //     navigate('/menu/order');
            // })
            // .catch((err) => {
            //     console.log(err);
            // });
        })
        .catch((err) => {
            console.log(err.response.data);
                setErrors(err.response.data.errors);
            // setErrors(err.response.data.errors);
        });
    };

    return (
        <div>
            <h2>Register</h2>
            {
                confirmReg ?
                <h4 className="text-success">{ confirmReg }</h4>
                : null
            }
            <form onSubmit={ registerUser }>
                <div>
                    <label htmlFor="firstName">FirstName</label>
                    {
                        errors.firstName ?
                        <span className="text-danger">{ errors.firstName.message }</span>
                        : null
                    }
                    <input
                        id="firstName"
                        name="firstName"
                        className=""
                        type="text"
                        onChange={ (e) => setFirstName(e.target.value) }
                        value={ firstName }
                    />
                </div>
                <div>
                    <label htmlFor="lastName">Last Name</label>
                    {
                        errors.lastName ?
                        <span className="text-danger">{ errors.lastName.message }</span>
                        : null
                    }
                    <input
                        id="lastName"
                        name="lastName"
                        className=""
                        type="text"
                        onChange={ (e) => setLastName(e.target.value) }
                        value={ lastName }
                    />
                </div>
                <div>
                    <label htmlFor="email">Email</label>
                    {
                        errors.email ?
                        <span className="text-danger">{ errors.email.message }</span>
                        : null
                    }
                    <input
                        id="email"
                        name="email"
                        className=""
                        type="text"
                        onChange={ (e) => setEmail(e.target.value) }
                        value={ email }
                    />
                </div>
                <div>
                    <label htmlFor="street1">Street One</label>
                    {
                        errors.street1 ?
                        <span className="text-danger">{ errors.street1.message }</span>
                        : null
                    }
                    <input
                        id="street1"
                        name="street1"
                        className=""
                        type="text"
                        onChange={ (e) => setStreet1(e.target.value) }
                        value={ street1 }
                    />
                </div>
                <div>
                    <label htmlFor="street2">Street Two</label>
                    {
                        errors.street2 ?
                        <span className="text-danger">{ errors.street2.message }</span>
                        : null
                    }
                    <input
                        id="street2"
                        name="street2"
                        className=""
                        type="text"
                        onChange={ (e) => setStreet2(e.target.value) }
                        value={ street2 }
                    />
                </div>
                <div>
                    <label htmlFor="city">City</label>
                    {
                        errors.city ?
                        <span className="text-danger">{ errors.city.message }</span>
                        : null
                    }
                    <input
                        id="city"
                        name="city"
                        className=""
                        type="text"
                        onChange={ (e) => setCity(e.target.value) }
                        value={ city }
                    />
                </div>
                <div>
                    <label htmlFor="state">State</label>
                    {
                        errors.state ?
                        <span className="text-danger">{ errors.state.message }</span>
                        : null
                    }
                    <select
                        id="state"
                        name="state"
                        className=""
                        onChange={ (e) => setState(e.target.value) }
                        value={ state }
                    >
                        <option value="-">-</option>
                        <option value="AL">AL</option>
                        <option value="AK">AK</option>
                        <option value="AZ">AZ</option>
                        <option value="AR">AR</option>
                        <option value="CA">CA</option>
                        <option value="CO">CO</option>
                        <option value="CT">CT</option>
                        <option value="DE">DE</option>
                        <option value="DC">DC</option>
                        <option value="FL">FL</option>
                        <option value="GA">GA</option>
                        <option value="HI">HI</option>
                        <option value="ID">ID</option>
                        <option value="IL">IL</option>
                        <option value="IN">IN</option>
                        <option value="IA">IA</option>
                        <option value="KS">KS</option>
                        <option value="KY">KY</option>
                        <option value="LA">LA</option>
                        <option value="ME">ME</option>
                        <option value="MD">MD</option>
                        <option value="MA">MA</option>
                        <option value="MI">MI</option>
                        <option value="MN">MN</option>
                        <option value="MS">MS</option>
                        <option value="MO">MO</option>
                        <option value="MT">MT</option>
                        <option value="NE">NE</option>
                        <option value="NV">NV</option>
                        <option value="NH">NH</option>
                        <option value="NJ">NJ</option>
                        <option value="NM">NM</option>
                        <option value="NY">NY</option>
                        <option value="NC">NC</option>
                        <option value="ND">ND</option>
                        <option value="OH">OH</option>
                        <option value="OK">OK</option>
                        <option value="OR">OR</option>
                        <option value="PA">PA</option>
                        <option value="RI">RI</option>
                        <option value="SC">SC</option>
                        <option value="SD">SD</option>
                        <option value="TN">TN</option>
                        <option value="TX">TX</option>
                        <option value="UT">UT</option>
                        <option value="VT">VT</option>
                        <option value="VA">VA</option>
                        <option value="WA">WA</option>
                        <option value="WV">WV</option>
                        <option value="WI">WI</option>
                        <option value="WY">WY</option>
                    </select>
                </div>
                <div>
                    <label htmlFor="zip">Zip Code</label>
                    {
                        errors.zip ?
                        <span className="text-danger">{ errors.zip.message }</span>
                        : null
                    }
                    <input
                        id="zip"
                        name="zip"
                        className=""
                        type="text"
                        onChange={ (e) => setZip(e.target.value) }
                        value={ zip }
                    />
                </div>
                <div>
                    <label htmlFor="password">Password</label>
                    {
                        errors.password ?
                        <span className="text-danger">{ errors.password.message }</span>
                        : null
                    }
                    <input
                        id="password"
                        name="password"
                        className=""
                        type="password"
                        onChange={ (e) => setPassword(e.target.value) }
                        value={ password }
                    />
                </div>
                <div>
                    <label htmlFor="confirmPassword">Confirm Password</label>
                    {
                        errors.confirmPassword ?
                        <span className="text-danger">{ errors.confirmPassword.message }</span>
                        : null
                    }
                    <input
                        id="confirmPassword"
                        name="confirmPassword"
                        className=""
                        type="password"
                        onChange={ (e) => setConfirmPassword(e.target.value) }
                        value={ confirmPassword }
                    />
                </div>
                <div>
                    <button type="submit">Register</button>
                </div>
            </form>
        </div>
    );
};

export default Register;