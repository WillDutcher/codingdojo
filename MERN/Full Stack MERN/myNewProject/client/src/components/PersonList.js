import React from 'react';
import { Link } from '@reach/router';
// import axios from 'axios';

const PersonList = (props) => {
    return (
        <div>
            {props.people.map((person) => {
                return (
                    <div key={ person._id }>
                        <Link to={`/people/${person._id}`}>{person.lastName}, {person.firstName}</Link>
                    </div>
                )
            })}
        </div>
    );
};

export default PersonList;