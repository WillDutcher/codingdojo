import React from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';

const DetailsButton = (props) => {
    const { authorId } = props;

    const getAuthorDetails = (e) => {
        axios.get(`http://localhost:8000/api/authors/${ authorId }`)
            .then((res => {
                console.log(res.data);
            }))
            .then(navigate(`/authors/${ authorId }`))
    };

    return (
        <button 
            className="details-btn btn btn-sm btn-secondary mx-3"
            onClick={ getAuthorDetails }
        >
            Info
        </button>
    );
};

export default DetailsButton;