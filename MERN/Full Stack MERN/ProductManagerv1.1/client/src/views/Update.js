import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';
import ProductForm from '../components/ProductForm';
import DetailsButton from '../components/DetailsButton';
import DeleteButton from '../components/DeleteButton';

const Update = (props) => {
    const { id } = props;                                               // Passed in id from App.js re: API call
    const [ product, setProduct ] = useState();                         // Leave whatever is in the product fields as is
    const [ loaded, setLoaded ] = useState(false);                      // Default loaded status to fault until useEffect() completed

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products/${ id }`)         // When loaded, do GET request to url with ID provided from props (passed in through URL)
            .then((res => {                                             // If successful response...
                console.log(res.data)                                   // ...console.log the response data then...
                setProduct(res.data)                                    // ...set product state equal to res.data then...
                setLoaded(true)                                         // ...set loaded state to true
            }))
    }, [id])                                                            // only call useEffect if loaded status changes

    const updateProduct = (product) => {                                // Update product passing in the product object 
        console.log("Hello")
        axios.put(`http://localhost:8000/api/products/${ id }`, product) // Call updateProduct API and give it passed in product object
            .then(res => console.log(res))                              // If successful response and then console.log the response data
            .then(navigate('/products'))                                // Navigate back to the /products route when updated
    }
                                                                        // Now the return will just take in the updateProduct and initial<Variable> values

    return (
        <div>
            <h1 className="mb-3">Update Product</h1>
            {
                loaded && (
                    <>
                        <ProductForm
                            onSubmitProp={ updateProduct }
                            initialTitle={ product.title }
                            initialPrice={ product.price }
                            initialDesc={ product.desc }
                        />
                        <div className="btn-grp d-flex mt-5 justify-content-between">
                            <DetailsButton
                                productId={ product._id }
                            />
                            <Link to={`/products`} className="home-btn btn btn-sm btn-success mx-3">
                                Home
                            </Link>
                            <DeleteButton
                                productId={ product._id }
                                successCallback={ () => navigate("/products") }
                            />
                        </div>
                    </>
                )
            }
        </div>
    );
};

export default Update;