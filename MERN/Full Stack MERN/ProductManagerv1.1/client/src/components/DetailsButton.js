import React from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';

const DetailsButton = (props) => {
    const { productId, successCallback } = props;

    const getProductDetails = (e) => {
        axios.get(`http://localhost:8000/api/products/${ productId }`)
            .then((res => {
                console.log(res.data);
            }))
            .then(navigate(`/products/${ productId }`))
    };

    return (
        <button 
            className="details-btn btn btn-sm btn-secondary mx-3"
            onClick={ getProductDetails }
        >
            Info
        </button>
    );
};

export default DetailsButton;