import React, { useEffect } from 'react';
import { Link, navigate } from '@reach/router';
import axios from 'axios';
import Cookies from 'js-cookie';
import icon from '../images/pp_logo.png';

const Header = () => {
    // const [ hasAccount, setHasAccount ] = useState(false);
    // const [ loggedIn, setLoggedIn ] = useState(false);
    // const [ order, setOrder ] = useState(0);

    // const [ user, setUser ] = useState();

    useEffect(() => {
        axios.get('http://localhost:8000/api/user/loggedin', { withCredentials: true })
        .then((res) => {
            console.log(res.data);
        })
        .catch((err) => {
            console.log(err);
        })
    }, [])

    const getLoggedInUser = () => {
        axios.get('http://localhost:8000/api/user/loggedin', {withCredentials: true})
            .then((res) => {
                console.log(res.data);
            })
            .catch((err) => {
                console.log(err);
            })
    }

    const logout = (e) => {
        e.preventDefault();
        console.log("Clicked logout")
        Cookies.remove('userLoginToken')
        axios.post('http://localhost:8000/api/user/logout', {},
        {
            withCredentials: true
        })
        .then((res) => {
            console.log(res.data);
            navigate('/user/login');
        })
        .catch((err) => {
            console.log(err);
        });
    };

    return (
        <div className="header d-flex justify-content-between align-items-center">
            <Link to={ '/' }><img src={ icon } alt="Logo for Paolo's Pizzaria" className="w-100" /></Link>
            <div className="w-50 text-center">
                <h3>Paolo's Pizzaria</h3>
                <h6>123 Main St | 555-999-1234</h6>
            </div>
            {/* <h6 className="d-block align-self-center text-right w-25">Login Stuff</h6> */}
            <nav className="w-25">
                <ul className="d-flex list-unstyled justify-content-between">
                    {/* <li>Home</li> */}
                    {/* <li>Order ({ order })</li> */}
                    {/* <li>Account</li> */}
                    {/* {
                        (user) ?
                            <Link to={ '/user/login'}>Log In</Link>
                            : <Link to={ '/user/reg'}>Register</Link>
                    } */}
                    {/* <Link to={ '/user/reg'}>Register</Link>
                    <Link to={ '/user/login'}>Log In</Link> */}
                    <Link to={ '/user/login'}>Log In</Link>
                    <Link to={ '/user/reg'}>Register</Link>
                    <Link onClick={ (e) => logout(e) } to={ '/' }>Log Out</Link>
                    {/* {
                        (hasAccount && loggedIn) ?
                            // <li>Logout</li>
                            // <Link to={ `/pets/new` }>add a pet to the shelter</Link>
                            <Link onClick={ (e) => logout(e) } to={ '/' }>Log Out</Link>
                            : (hasAccount && !loggedIn) ?
                                <li>Log In</li>
                                : <li>Register</li>
                    } */}
                </ul>
                <button onClick={ getLoggedInUser }>Check Logged In User</button>
            </nav>
        </div>
    );
};

export default Header;