import React, { useEffect, useState } from 'react';
import { Link, navigate } from '@reach/router';
import axios from 'axios';
import DeleteButton from '../components/DeleteButton';

const Detail = (props) => {
    const [ product, setProduct ] = useState({});                       // props is the product object (title, price, desc)

    useEffect(() => {                                                // When the page comes up, run this immediately
        axios.get(`http://localhost:8000/api/products/${props.id}`)     // Call GET on products API with the id that was passed in through props
            .then(res => setProduct({                                   // If successful, the response performs callback to set product state...
                ...res.data                                             // ...to the result of the response data
            }))
    }, [props.id]);                                                     // Only call useEffect again if the id changes

    return (
        <div>
            <h2 className="mt-5">{ product.title }</h2>
            <div>
                <h4>${ product.price }</h4>
                <p className="p-3 text-center">{ product.desc }</p>
            </div>
            <div className="btn-grp d-flex">
                <Link to={`/products/${product._id}/edit`} className="link-btn btn btn-sm btn-info mx-3">
                    Edit
                </Link>
                <Link to={`/products`} className="home-btn btn btn-sm btn-success mx-3">
                    Home
                </Link>
                <DeleteButton
                    productId={ product._id }
                    successCallback={ () => navigate("/products") }
                />
            </div>
        </div>
    );
};

export default Detail;