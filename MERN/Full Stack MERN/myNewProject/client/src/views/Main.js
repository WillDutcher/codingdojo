import React, { useEffect, useState } from 'react';
import axios from 'axios'
import PersonForm from '../components/PersonForm';
import PersonList from '../components/PersonList';

const Main = () => {
    const [ people, setPeople ] = useState([]);
    const [ loaded, setLoaded ] = useState(false);

    useEffect(() => {
        axios.get('http://localhost:8000/api/people')
            .then(res => {
                console.log(res.data)
                setPeople(res.data)
                setLoaded(true)
            })
    }, [loaded]);

    const removeFromDom = (personId) => {
        setPeople(people.filter(person => person._id !== personId));
    };

    const createPerson = (person) => {                                          // Creates a new person
        axios.post('http://localhost:8000/api/people', person)                  // Axios post method that takes in person object = ({ firstName, lastName })
            .then(res => {
                setPeople([ ...people, res.data ]);                             // setPeople spreading out people object and appending current person object = res.data!
            })
    };
    
    return (
        <div>
            <PersonForm
                onSubmitProp={ createPerson }
                initialFirstName=""
                initialLastName=""
            />
            <hr/>
            <u><h2>List of People</h2></u>
            { loaded &&
                <PersonList
                    people={ people }
                    removeFromDom={ removeFromDom }
                />
            }
        </div>
    );
};

export default Main;