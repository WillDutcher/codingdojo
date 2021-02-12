import React from 'react';
import { Link } from '@reach/router';
// import axios from 'axios';

const ProductList = (props) => {
    return (
        <div>
            {props.products.map((product) => {
                return (
                    <div>
                        <p key={ product._id }>
                            Item: <Link to={`/products/${product._id}`}>{product.title}</Link>, Price: ${product.price}<br/>
                            Description: {product.desc}
                        </p>
                    </div>
                )
            })}
        </div>
    );
};

export default ProductList;