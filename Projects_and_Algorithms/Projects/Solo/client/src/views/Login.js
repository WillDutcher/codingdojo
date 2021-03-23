import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import Cookies from 'js-cookie';

const Login = (props) => {
    const [ email, setEmail ] = useState("");
    const [ password, setPassword ] = useState("");
    const [ errorMessage, setErrorMessage ] =useState("");

    const login = (e) => {
        e.preventDefault();
        
        axios.post("http://localhost:8000/api/user/login", {
            email,
            password
        },
        {
            withCredentials: true
        })
        .then((res) => {
            Cookies.set('userLoginToken', res.data.userLogged.hasAccount)
            console.log(res.data);
            navigate('/menu/order');
        })
        .catch((err) => {
            console.log(err);
            setErrorMessage(err.response.data.msg);
        });
    };

    return (
        <div>
            <h2>Login</h2>
            <p className='text-danger'>{ errorMessage ? errorMessage : '' }</p>
            <form onSubmit={ login }>
                <div>
                    <label htmlFor='loginEmail'>Email</label>
                    <input
                        id="loginEmail"
                        name="loginEmail"
                        className=""
                        type="text"
                        placeholder="Enter email"
                        onChange={ (e) => setEmail(e.target.value) }
                        value={ email }
                    />
                </div>
                <div>
                    <label htmlFor="loginPassword">Password</label>
                    <input
                        id="loginPassword"
                        name="loginPassword"
                        className=""
                        type="password"
                        onChange={ (e) => setPassword(e.target.value) }
                        value={ password }
                    />
                </div>
                <div className='text-center'>
                    <button type='submit'>Log In</button>
                </div>
            </form>
        </div>
    );
};

export default Login;