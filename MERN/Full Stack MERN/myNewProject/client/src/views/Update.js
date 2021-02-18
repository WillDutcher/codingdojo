import React, { useEffect, useState } from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';

const Update = (props) => {
    const { id } = props;
    const [ firstName, setFirstName ] = useState();
    const [ lastName, setLastName ] = useState();

    useEffect(() => {
        axios.get(`http://localhost:8000/api/people/${id}`)
            .then(res => {
                setFirstName(res.data.firstName);
                setLastName(res.data.lastName);
            })
    }, [id]);

    const updatePerson = (e) => {
        e.preventDefault();
        axios.put(`http://localhost:8000/api/people/${id}`, {
            firstName,  // this is shortcut syntax for firstName: firstName
            lastName    // this is shortcut syntax for lastName: lastName
        })
            .then(res => console.log(res))
            .then(console.log("Updated!"))
            .then(navigate(`/people/`))
    };

    return (
        <div>
            <h1>Update Person</h1>
            <form onSubmit={ updatePerson }>
                <p>
                    <label htmlFor="firstName">First Name:</label><br/>
                    <input
                        className="pl-1"
                        id="firstName"
                        type="text"
                        name="firstName"
                        value={ firstName }
                        onChange={ (e) => { setFirstName(e.target.value) }}
                    />
                </p>
                <p>
                    <label htmlFor="lastName">Last Name:</label><br/>
                    <input
                        className="pl-1"
                        id="lastName"
                        type="text"
                        name="lastName"
                        value={ lastName }
                        onChange={ (e) => { setLastName(e.target.value) }}
                    />
                </p>
                <input className="btn btn-primary py-1 px-3" type="submit" />
            </form>
        </div>
    );
};

export default Update;