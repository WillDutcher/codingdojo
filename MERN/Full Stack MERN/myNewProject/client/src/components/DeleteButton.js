import React from 'react';
import axios from 'axios';

const DeleteButton = (props) => {
    const { personId, successCallback } = props;
    
    const deletePerson = (e) => {
        axios.delete(`http://localhost:8000/api/people/${ personId }`)
            .then(res => {
                successCallback();
            })
    };

    return (
        <button onClick={ deletePerson } className="btn btn-sm btn-outline-danger px-2 py-0 m-3" >
            Delete
        </button>
    );
};

export default DeleteButton;