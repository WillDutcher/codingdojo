import React, { useEffect, useState } from 'react';
import axios from 'axios';
import ProductForm from '../components/ProductForm';
import ProductList from '../components/ProductList';

const Main = () => {
    const [ products, setProducts ] = useState([]);                             // props
    const [ loaded, setLoaded ] = useState(false);                              // props

    useEffect(() => {
        axios.get('http://localhost:8000/api/products')                         // API GET call to show all products
            .then((res) => {                                                    // If successful response...
                console.log(res.data)                                           // ...console.log the response data then...
                setProducts(res.data)                                           // ...set products state equal to res.data then...
                setLoaded(true)                                                 // ...set loaded state to true
            })
    }, [ loaded ]);                                                             // only call useEffect if loaded status changes

    const removeFromDom = (productId) => {                                      // remove object from DOM
        setProducts(products.filter( product => product._id !== productId ))    // Create new filter of all products minus that deleted product
    };

    const createProduct = (product) => {                                        // Create a new product passing in the product object
        axios.post(`http://localhost:8000/api/products`, product)               // Call createProduct API and give it passed in product object
            .then((res) => {                                                    // If successful response...
                console.log(res.data)                                           // ...console.log the response data then...
                setProducts([                                                   // ...set products state...
                    ...products,                                                // ...by spreading all products and...
                    res.data                                                    // ...appending the new product object (res.data) to that products array
                ])
            })
    };

    /******************************** This is how I FINALLY got removeFromDom to work!!! /********************************/
    // const removeFromDom = (productId) => {
    //     const someItems = products.filter(item => item._id !== productId);
    //     setProducts(someItems)
    // };

    return (
        <div>
            <ProductForm
                onSubmitProp={ createProduct }
                initialTitle=""
                initialPrice=""
                initialDesc=""
            />
            <hr/>
            {
                loaded &&
                    <ProductList
                        products={ products }
                        removeFromDom={ removeFromDom }
                    />
            }
        </div>
    );
};

export default Main;