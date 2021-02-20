import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const SingleProduct = (props) => {
    const [ product, setProduct ] = useState({});

    const editProduct2 = () => {
        console.log("Editing product")
    }

    const deleteProduct2 = () => {
        console.log("Deleting product")
        axios.delete(`http://localhost:8000/api/products/${ product._id }`)
            .then((res) => {
                console.log(product._id)
            })
            .then(navigate('/products'));
    }

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products/${props.id}`)
        .then((res => {
            console.log(res.data);
            setProduct({
                ...res.data
            })
        }))
    }, [])

    return (
        <div>
            <h2 className="mt-5">{ product.title }</h2>
            <div>
                <h4>${ product.price }</h4>
                <p className="p-3 text-center">{ product.desc }</p>
            </div>
            <div className="d-flex justify-content-center">
                <Link
                    to={`/products/${product._id}/edit`}
                    className="link-btn btn btn-sm btn-outline-info mx-3"
                    onClick={ editProduct2 }
                >
                    Edit
                </Link>
                <button
                    className="btn btn-sm btn-outline-danger mx-3"
                    onClick={ deleteProduct2 }
                >
                    Delete
                </button>
            </div>
            <Link to={`/products`} id="home-btn" className="btn btn-primary mt-4">Home</Link>
        </div>
    );
};

export default SingleProduct;