import React from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';

const Header = () => {
    return (
        <div className="header d-flex justify-content-between align-items-center">
            <img src="pp_logo.png" alt="Logo for Paolo's Pizzaria" className="w-25" />
            <div className="w-50 text-center">
                <h3>Paolo's Pizzaria</h3>
                <h6>123 Main St | 555-999-1234</h6>
            </div>
            <h6 className="d-block align-self-center text-right w-25">Login Stuff</h6>
        </div>
    );
};

export default Header;