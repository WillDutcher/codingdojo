import React from 'react';
import axios from 'axios';

const DeleteButton = (props) => {
    const { authorId, successCallback } = props;

    const deleteAuthor = (e) => {
        axios.delete(`http://localhost:8000/api/authors/${ authorId }`)
            .then((res) => {
                console.log(res.data);
                successCallback();
            })
            .catch((err) => {
                console.log("err.response:")
                console.log(err.response)
                console.log("err.res:")
                console.log(err.res)
            })
    };

    return (
        <button className="d-inline delete-btn btn btn-sm text-white" onClick={ deleteAuthor }>
            Delete
        </button>
    );
};

export default DeleteButton;