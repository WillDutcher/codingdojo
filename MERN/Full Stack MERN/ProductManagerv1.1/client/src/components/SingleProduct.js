import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const SingleProduct = (props) => {
    const [ product, setProduct ] = useState({});

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
            <h2>Single Product</h2>
            {
                product.title
            }
        </div>
    );
};

export default SingleProduct;