import React, { useEffect, useState } from 'react';
import axios from 'axios';

const PersonForm = (props) => {
    // keep track of what is being typed via useState hook
    const { initialFirstName, initialLastName, onSubmitProp } = props;      // See App.js to see these passed in
    const [ firstName, setFirstName ] = useState(initialFirstName);         // Use the value of whatever the initial first name is (for update or new!)
    const [ lastName, setLastName ] = useState(initialLastName);            // Use the value of whatever the initial last name is (for update or new!)
    
    const onSubmitHandler = (e) => {                                        // handler when form is submitted
        //e.preventDefault();                                                 // prevent default behavior on submit; NOTE api is now reached within Main.js!
        onSubmitProp({ firstName, lastName });                              // See Main.js; this will either be createPerson for PersonForm & updatePerson for Update
    }

    return (
        <form onSubmit={ onSubmitHandler }>
            <p>
                <label htmlFor="firstName">First Name</label><br/>
                <input
                    className="pl-1"
                    id="firstName"
                    type="text"
                    onChange={ (e) => setFirstName(e.target.value) }        // onChange to update firstName
                    value={ firstName }                                     // whatever current value of firstName is
                />
            </p>
            <p>
                <label htmlFor="lastName">Last Name</label><br/>
                <input
                    className="pl-1"
                    id="lastName"
                    type="text"
                    onChange={ (e) => setLastName(e.target.value) }         // onChange to update lastName
                    value={ lastName }                                      // whatever current value of lastName is
                />
            </p>
            <input type="submit" className="btn btn-primary py-1 px-3" />
        </form>
    );
};

export default PersonForm;