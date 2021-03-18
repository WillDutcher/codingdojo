import React, { useState } from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';
import icon from '../images/pp_logo.png';

const Header = () => {
    const [ hasAccount, setHasAccount ] = useState(false);
    const [ loggedIn, setLoggedIn ] = useState(false);
    const [ order, setOrder ] = useState(0);
    return (
        <div className="header d-flex justify-content-between align-items-center">
            <img src={icon} alt="Logo for Paolo's Pizzaria" className="w-25" />
            <div className="w-50 text-center">
                <h3>Paolo's Pizzaria</h3>
                <h6>123 Main St | 555-999-1234</h6>
            </div>
            {/* <h6 className="d-block align-self-center text-right w-25">Login Stuff</h6> */}
            <nav className="w-25">
                <ul className="d-flex list-unstyled justify-content-between">
                    <li>Home</li>
                    <li>Order ({ order })</li>
                    <li>Account</li>
                    {
                        (hasAccount && loggedIn) ?
                            <li>Logout</li>
                            : (hasAccount && !loggedIn) ?
                                <li>Log In</li>
                                : <li>Register</li>
                    }
                </ul>
            </nav>
        </div>
    );
};

export default Header;