import React, { useEffect, useState } from 'react';
import { Link } from '@reach/router';
import axios from 'axios';

const Detail = (props) => {
    const [ product, setProduct ] = useState({});

    useEffect( () => {
        axios.get("http://localhost:8000/api/products/" + props.id)
            .then(res => setProduct({
                ...res.data
            }))
    }, [product, props.id]);

    return (
        <div>
            <p className="btn btn-sm btn-primary py-1 px-3 mb-3">
                <Link className="text-white text-decoration-none" to="/products">Go Back</Link>
            </p>
            <p>Item: {product.title}, Price: ${product.price}</p>
            <p>Description: {product.desc}</p>
        </div>
    );
};

export default Detail;