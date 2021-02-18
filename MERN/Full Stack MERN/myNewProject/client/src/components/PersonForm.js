import React, { useState } from 'react';
import axios from 'axios';

const PersonForm = () => {
    // keep track of what is being typed via useState hook
    const [ firstName, setFirstName ] = useState("");
    const [ lastName, setLastName ] = useState("");
    
    const onSubmitHandler = (e) => {                                        // handler when form is submitted
        e.preventDefault();                                                 // prevent default behavior on submit
        axios.post('http://localhost:8000/api/people', {                    // make a post request to create a new person
            firstName,
            lastName
        })
            .then(res => console.log(res))
            .catch(err => console.log(err))
        setFirstName("");
        setLastName("");

    }

    return (
        <form onSubmit={ onSubmitHandler }>
            <p>
                <label htmlFor="firstName">First Name</label><br/>
                <input
                    className="pl-1"
                    id="firstName"
                    type="text"
                    onChange={ (e) => setFirstName(e.target.value) }      // onChange to update firstName
                    value={ firstName }
                />
            </p>
            <p>
                <label htmlFor="lastName">Last Name</label><br/>
                <input
                    className="pl-1"
                    id="lastName"
                    type="text"
                    onChange={ (e) => setLastName(e.target.value) }       // onChange to update lastName
                    value={ lastName }
                />
            </p>
            <input type="submit" className="btn btn-primary py-1 px-3" />
        </form>
    );
};

export default PersonForm;