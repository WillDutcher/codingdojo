import React from 'react';
import axios from 'axios';
import { Link } from '@reach/router';

const ProductList = (props) => {
    const { removeFromDom } = props;

    const deleteProduct = (productId) => {
        axios.delete(`http://localhost:8000/api/products/${ productId }`)
            .then(res => {
                removeFromDom(productId)
            })
            .then(console.log("Deleted!"))
    }
                                    // If doesn't work, try products._id
    return (
        <div>
            {props.products.map((product, idx) => {
                return (
                    <p className="d-flex justify-content-center align-items-center" key={ idx }>
                        <strong><span className="mr-2">Item:</span></strong><Link to={`/products/${product._id}`}>{product.title}</Link>,  <strong><span className="mx-2">Price:</span></strong> ${product.price}<br/>
                        <button className="btn btn-sm btn-outline-danger ml-3" onClick={ (e) => { deleteProduct(product._id) }}>
                            Delete
                        </button>
                    </p>
                )
            })}
        </div>
    );
};

export default ProductList;