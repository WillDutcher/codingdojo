import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link } from '@reach/router';
import DeleteButton from "./DeleteButton";

const PersonList = (props) => {
    const [ people, setPeople ] = useState([]);
    
    useEffect(() => {
        axios.get('http://localhost:8000/api/people')
            .then(res => setPeople(res.data));
    }, []);

    const removeFromDom = ( personId ) => {
        setPeople(people.filter(person => person._id != personId ))
    };
    
    return (
        <div>
            { people.map(( person, idx ) => {
                return (
                    <p key={ idx }>
                        <Link className="btn btn-sm btn-outline-info px-2 py-0 m-3" to={ `/people/${ person._id }/edit` }>
                            Edit
                        </Link>
                        <Link to={ `/people/${ person._id }` }>
                            { person.lastName }, { person.firstName }
                        </Link>
                        <DeleteButton 
                            personId={ person._id } 
                            successCallback={ () => removeFromDom(person._id) } 
                        />
                    </p>
                )
            })}
        </div>
    );
};

export default PersonList;