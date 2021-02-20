import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const CreateProduct = (props) => {
    // Create a form component so that your Product can have a title, price, and description
    const [ title, setTitle ] = useState("");
    const [ price, setPrice ] = useState("");
    const [ desc, setDesc ] = useState("");

    const submitForm = (e) => {
        e.preventDefault();
        axios.post("http://localhost:8000/api/products", {
            title: title,
            price: price,
            desc: desc
        })
            .then((res) => {
                console.log(res.data);
                navigate(`/products/${ res.data._id }`);
            })
            .catch((err) => {
                console.log(err);
            })
    }
    
    return (
        <form onSubmit={ submitForm }>
            <h2>Create Product</h2>
            <div className="form-group">
                <label htmlFor="title">Product Title:</label>
                <input 
                    id="title"
                    name="title"
                    className="form-control m-0"
                    type="text"
                    placeholder="Enter product title"
                    onChange={ (e) => setTitle(e.target.value) }
                    value={ title }
                />
            </div>
            <div className="form-group">
                <label htmlFor="price">Price:</label>
                <input 
                    id="price"
                    name="price"
                    className="form-control m-0"
                    placeholder="Enter product price"
                    type="number"
                    onChange={ (e) => setPrice(e.target.value) }
                    value={ price }
                />
            </div>
            <div className="form-group">
                <label htmlFor="desc">Description:</label>
                <textarea 
                    id="desc"
                    name="desc"
                    className="form-control m-0"
                    rows="2"
                    placeholder="Enter product description"
                    type="text"
                    onChange={ (e) => setDesc(e.target.value) }
                    value={ desc }
                />
            </div>
            <button
                id="add-product-btn"
                className="d-block btn btn-secondary"
                type="submit"
            >
                Add Product
            </button>
        </form>
    );
};

export default CreateProduct;