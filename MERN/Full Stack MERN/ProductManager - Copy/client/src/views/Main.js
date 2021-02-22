import React, { useEffect, useState } from 'react';
import axios from 'axios';
import ProductForm from '../components/ProductForm';
import ProductList from '../components/ProductList';

const Main = () => {
    const [ products, setProducts ] = useState([]);
    const [ loaded, setLoaded ] = useState(false);

    useEffect(() => {
        axios.get('http://localhost:8000/api/products')
            .then(res => {
                console.log(res.data)
                setProducts(res.data)
                setLoaded(true)
            })
    }, [loaded]);

    const removeFromDom = (productId) => {
        setProducts(products.filter(product => products._id !== productId));
    };
    
    return (
        <div>
            <ProductForm />
            <hr/>
            <u><h2>List of Products</h2></u>
            { loaded && <ProductList products={ products } removeFromDom={ removeFromDom } /> }
        </div>
    );
};

export default Main;