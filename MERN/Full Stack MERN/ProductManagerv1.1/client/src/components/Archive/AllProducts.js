import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const AllProducts = (props) => {
    const { removeFromDom } = props;

    const deleteProduct = (productId) => {
        console.log("Deleting product")
        console.log(productId)
        axios.delete(`http://localhost:8000/api/products/${ productId }`)
            .then((res) => {
                console.log("Logging products:")
                console.log(props.products)
            })
            .then((res => {
                removeFromDom(productId)
            }))
            .then(console.log("Deleted!!!"))
    }

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products`)
            .then((res) => {
                console.log(res.data);
                props.setProducts(res.data);
            })
            .catch((err) => {
                console.log("Error received", err);
            })
    }, []);

    return (
        <div>
            <h2>All Products</h2>
            {
                props.products.map((product, idx) => (
                    <div key={ idx }>
                        <hr/>
                        <div className="d-flex justify-content-center align-items-center m-3">
                            <Link
                                to={`/products/${product._id}`}
                                className="link-btn btn btn-sm btn-outline-info mx-3"
                            >
                                Details
                            </Link>
                            <h5 className="product-title mb-0">{`${product.title}`}</h5>
                            <button
                                className="btn btn-sm btn-outline-danger mx-3"
                                onClick={ (e) => { deleteProduct(product._id) }}
                            >
                                Delete
                            </button>
                        </div>
                    </div>
                ))
            }
        </div>
    );
};

export default AllProducts;