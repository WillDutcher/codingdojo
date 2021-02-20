import React, { useEffect, useState } from 'react';
import axios from 'axios';
import AllProducts from '../components/AllProducts';
import EditProduct from '../components/EditProduct';
import CreateProduct from '../components/CreateProduct';
import SingleProduct from '../components/SingleProduct';

const Main = () => {
    const [ products, setProducts ] = useState([]);
    const [ loaded, setLoaded ] = useState(false);

    useEffect(() => {
        axios.get('http://localhost:8000/api/products')
            .then((res) => {
                console.log(res.data)
                setProducts(res.data)
                setLoaded(true)
            })
    }, [ loaded ]);

    /******************************** This is how I FINALLY got removeFromDom to work!!! /********************************/
    const removeFromDom = (productId) => {
        const someItems = products.filter(item => item._id !== productId);
        setProducts(someItems)
    };

    return (
        <div>
            <CreateProduct />
            <hr/>
            { loaded && <AllProducts products={ products } removeFromDom={ removeFromDom } /> }
        </div>
    );
};

export default Main;