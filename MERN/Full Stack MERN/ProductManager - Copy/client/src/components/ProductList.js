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
                    <p className="d-flex justify-content-center" key={ idx }>
                        Item: <Link to={`/products/${product._id}`}>{product.title}</Link>, Price: ${product.price}<br/>
                        <button onClick={ (e) => { deleteProduct(product._id) }}>
                            Delete
                        </button>
                    </p>
                )
            })}
        </div>
    );
};

export default ProductList;