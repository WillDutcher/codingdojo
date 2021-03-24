import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';

const Login = (props) => {
    const [ email, setEmail ] = useState("");
    const [ password, setPassword ] = useState("");
    const [ errorMessage, setErrorMessage ] = useState("");

    const login = (e) => {
        
    }
}

return (
    <div>
        <h2>Login</h2>
        <p className="error-text">{ errorMessage ? errorMessage : "" }</p>
        <form onSubmit={ login }>
            <div>
                <label>Email</label>
                <input type="text" name="email"
            </div>
        </form>
    </div>
)