// Call on and return all products in the database
import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link } from '@reach/router';
import DeleteButton from './DeleteButton';
import DetailsButton from './DetailsButton';

const ProductList = (props) => {
    const [ products, setProducts ] = useState([]);             // Set array of products

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products`)         // Access API with GET request
            .then((res) => {                                    // Perform callback on response
                console.log(res.data);                          // Console.log response.data
                setProducts(res.data);                          // Set products state at the res.data return
            })
            .catch((err) => {
                console.log("Error received", err);
            })
    }, []);

    const removeFromDom = ( productId ) => {                    // Remove product from DOM
        setProducts(products.filter(product => product._id !== productId))  // Create filtered list minus that product, above
    };

    return (
        <div>
            <h2>All Products</h2>
            {
                products.map(( product, idx ) => {
                    return (
                        <div key={ idx }>
                        <div className="d-flex justify-content-center align-items-center m-3">
                            <h5 className="product-title mb-0">{`${product.title}`}</h5>
                            <DetailsButton
                                productId={ product._id }
                            />
                            <Link
                                to={`/products/${product._id}/edit`}
                                className="link-btn btn btn-sm btn-info mx-3"
                            >
                                Edit
                            </Link>
                            <DeleteButton
                                productId={ product._id }
                                successCallback={ () => removeFromDom(product._id) }
                            />
                        </div>
                    </div>
                    )
                })
            }
        </div>
    );
};

export default ProductList;