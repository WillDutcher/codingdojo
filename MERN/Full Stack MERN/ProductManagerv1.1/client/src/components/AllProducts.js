import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const AllProducts = (props) => {
    const [ allProducts, setAllProducts ] = useState([]);

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products`)
            .then((res) => {
                console.log(res.data);
                setAllProducts(res.data);
            })
            .catch((err) => {
                console.log("Error received", err);
            })
    }, []);

    return (
        <div>
            <h2>All Products</h2>
            {
                allProducts.map((product, idx) => (
                    <div>
                        <hr/>
                        <div className="d-flex justify-content-center align-items-center m-3" key={ idx }>
                            <button className="btn btn-sm btn-outline-primary mx-3">Details</button>
                            <h5 className="product-title mb-0">{`${product.title}`}</h5>
                            <button className="btn btn-sm btn-outline-danger mx-3">Delete</button>
                        </div>
                    </div>
                ))
            }
        </div>
    );
};

export default AllProducts;