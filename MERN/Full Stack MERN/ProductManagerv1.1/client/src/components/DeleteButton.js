import React from 'react';
import axios from 'axios';

const DeleteButton = (props) => {
    const { productId, successCallback } = props;                           // Passed-in props from ProductList

    const deleteProduct = (e) => {
        axios.delete(`http://localhost:8000/api/products/${ productId }`)   // API call to delete product by productId
            .then((res) => {                                                // Get response and callback
                console.log(res.data);                                      // Console.log response.data
                successCallback();                                          // Immediately perform whatever callback (create or update) method is called
            })
    };

    return (
        <button
            className="delete-btn btn btn-sm btn-danger mx-3"
            onClick={ deleteProduct }
        >
            Delete
        </button>
    );
};

export default DeleteButton;