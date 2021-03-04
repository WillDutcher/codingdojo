import React from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';

const DeleteButton = (props) => {
    const { id } = props;

    const onClickHandler = (e) => {
        axios.delete(`http://localhost:8000/api/athletes/${ id }`)
            .then((res) => {
                console.log(res);
                navigate('/');
            })
            .catch((err) => {
                console.log(err);
            })
    };

    return (
        <button onClick={ onClickHandler } className="ml-3">Delete</button>
    );
};

export default DeleteButton;