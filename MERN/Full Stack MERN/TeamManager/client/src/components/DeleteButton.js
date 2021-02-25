import React from 'react';
import axios from 'axios';

const DeleteButton = (props) => {
    
    const deletePlayer = () => {
        axios.delete(`http://localhost:8000/api/players/${ props.id }`)
            .then((res) => {
                console.log(res);
                props.removeFromDom();
                props.closePopup();
            })
            .catch((err) => {
                console.log("Error caught: " + err)
                console.log(err.response)
            })
    };

    return (
        <button className="btn btn-sm btn-danger" onClick={ deletePlayer }>
            Delete
        </button>
    )
};

export default DeleteButton;