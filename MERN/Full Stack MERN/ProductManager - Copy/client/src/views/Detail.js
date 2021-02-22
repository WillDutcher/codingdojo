import React, { useEffect, useState } from 'react';
import { Link, navigate } from '@reach/router';
import axios from 'axios';

const Detail = (props) => {
    const [ product, setProduct ] = useState({});
    const { removeFromDom } = props;
    const deleteProduct = (productId) => {
        axios.delete(`http://localhost:8000/api/products/${ productId }`)
            .then(res => {
                removeFromDom(productId)
            })
            .then(console.log("Deleted!"))
            .then(navigate(`/products`))
    }

    useEffect( () => {
        axios.get(`http://localhost:8000/api/products/${props.id}`)
            .then(res => setProduct({
                ...res.data
            }))
    }, [props.id]);

    return (
        <div>
            <p className="btn btn-sm btn-primary py-1 px-3 mb-3">
                <Link className="text-white text-decoration-none" to="/products">Go Back</Link>
            </p>
            <p>Item: { product.title }, Price: ${ product.price }</p>
            <p>Description: { product.desc }</p>
            <div className="detail-btns d-flex justify-content-center">
                <Link className="btn btn-sm btn-outline-primary"  to={`/products/${ product._id }/edit`}>
                    Edit
                </Link>            
                <Link className="btn btn-sm btn-outline-danger" to={`/products/${ product._id }/edit`} onClick={ (e) => { deleteProduct(product._id) }}>
                    Delete
                </Link>
            </div>
        </div>
    );
};

export default Detail;