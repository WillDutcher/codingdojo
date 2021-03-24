import React from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';

const Header = () => {
    const logout = (e) => {
        e.preventDefault();
        axios.post('http://localhost:8000/api/user/logout', {
            withCredentials: true
        })
            .then((res) => {
                console.log(res.data);
                navigate('/skiff');
            })
            .catch((err) => {
                console.log(err);
            })
    };

    return (
        <div>
            <h1>Welcome to Tolman Skiffs!</h1>
            <div className="text-center">
                <button onClick={ () => navigate("/skiff") }>Go see All Skiffs</button>
                <button onClick={ () => navigate("/logreg") }>Login to edit and add skiffs</button>
                <button onClick={ (e) => logout(e)} >Logout</button>
            </div>
        </div>
    );
};