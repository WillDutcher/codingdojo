import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import PersonForm from '../components/PersonForm';
import DeleteButton from '../components/DeleteButton';

const Update = (props) => {
    const { id } = props;
    const [ person, setPerson ] = useState();
    const [ loaded, setLoaded ] = useState(false);

    useEffect(() => {
        axios.get(`http://localhost:8000/api/people/${ id }`)               // When loaded, reach out to /api/people/${id}
            .then(res => {
                setPerson(res.data);                                        // use setPerson and pass in the data retrieved from API
                setLoaded(true);                                            // upon success, set loaded condition to be true
            })
    }, [id]);                                                               // Only call useEffect() again if a new id passed in

    const updatePerson = (person) => {                                      // Passing in person object now instead of listenerEvent; no need for preventDefault()!
        axios.put(`http://localhost:8000/api/people/${ id }`, person)       // Call axios.put operation and pass in the id that came with the request
            .then(res => console.log(res))                                  // After update completed, log the response for potential testing purposes
            .then(navigate('/people'))                                      // Navigate back to the /people route when updated
    }
                                                                            // Now the return will just take in the updatePerson, initialFirstName, and initialLastName props

    return (
        <div>
            <h1>Update Person</h1>
            { loaded && (
                <>
                    <PersonForm
                        onSubmitProp={ updatePerson }
                        initialFirstName={ person.firstName }
                        initialLastName={ person.lastName }
                    />
                    <DeleteButton
                        personId={ person._id }
                        successCallback={ () => navigate("/people") }
                    />
                </>
            )}
        </div>
    );
};

export default Update;