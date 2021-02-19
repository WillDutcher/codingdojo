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
                if (loaded) {
                    console.log(res.data)
                }
                setProducts(res.data)
                setLoaded(true)
            })
    }, [loaded]);

    const removeFromDom = (personId) => {
        setProducts(products.filter(person => products._id !== personId));
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