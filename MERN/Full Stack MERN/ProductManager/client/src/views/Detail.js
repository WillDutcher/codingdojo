import React, { useEffect, useState } from 'react';
import { Link, navigate } from '@reach/router';
import axios from 'axios';

const Detail = (props) => {
    const [ product, setProduct ] = useState({});
    const [ products, setProducts ] = useState([]);
    
    const removeFromDom2 = (personId) => {
        console.log("In removeFromDom2; will probably not read next console.log");
        setProducts(products.filter(person => products._id !== personId));
        console.log("TEST")
    };

    const deleteProduct = (productId) => {
        axios.delete(`http://localhost:8000/api/products/${ productId }`)
            // .then(res => {
            //     removeFromDom2(productId)
            // })
            .then(console.log("Deleted!"))
            .then(axios.get('http://localhost:8000/api/products'))
                .then(res => {
                    console.log("Successful")
                })
    }
    
    useEffect( () => {
        axios.get(`http://localhost:8000/api/products/${props.id}`)
            .then(console.log("Products:"))
            .then(console.log(products))
            .then(console.log("I am trying something."))
            .then(res => setProduct({
                ...res.data
            }))
    }, [products, props.id]);

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