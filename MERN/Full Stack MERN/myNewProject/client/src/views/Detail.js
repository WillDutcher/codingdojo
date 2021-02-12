import React, { useEffect, useState } from 'react';
import { Link } from '@reach/router';
import axios from 'axios';

const Detail = (props) => {
    const [ person, setPerson ] = useState({});

    useEffect(() => {
        axios.get(`http://localhost:8000/api/people/${props.id}`)
            .then(res => setPerson({
                ...res.data
            }))
    }, [props.id]);

    return (
        <div>
            <div className="home-btn-div btn btn-sm btn-dark py-1 px-3 mb-3">
                <Link className="home-btn" to="/people">Go Back</Link>
            </div>
            <p>First Name: {person.firstName}</p>
            <p>Last Name: {person.lastName}</p>
        </div>
    );
};

export default Detail;