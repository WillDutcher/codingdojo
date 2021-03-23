import React, { useState } from 'react';
import axios from 'axios';

const Register = (props) => {
    const [ firstName, setFirstName ] = useState("");

    const register = (e) => {
        e.preventDefault();

        const newUser = {
            firstName,
            lastName,
            email,
            password,
            confirmPassword
        };

        axios.post('http://localhost:8000/api/user/register',
        newUser,
        {
            withCredentials: true
        })
        .then(res => {
            console.log(res.data);

            // when successfully create account, reset state for reg form
            setFirstName("");
            setLastName("");
            setEmail("");
            setPassword("");
            setConfirmPassword("");
            setErrs({});
            setConfirmReg("Thank you for Registering, you can now log in!");
        })
        .catch((err) => {
            console.log(err);
            setErrs(err.response.data.errors);
        })
    }
}