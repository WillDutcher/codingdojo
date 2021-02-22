import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const EditProduct = (props) => {
    const { id } = props;
    const [ title, setTitle ] = useState();
    const [ price, setPrice ] = useState();
    const [ desc, setDesc ] = useState();

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products/${id}`)
            .then((res) => {
                setTitle(res.data.title);
                setPrice(res.data.price);
                setDesc(res.data.desc);
            })
    }, []);

    const editProduct = (e) => {
        e.preventDefault();
        axios.put(`http://localhost:8000/api/products/${id}`, {
            title: title,
            price: price,
            desc: desc
        })
            .then(res => console.log(res))
            .then(console.log("Updated Product!"))
            .then(navigate(`/products`))
    };

    return (
        <div>
            <h2>Edit Product</h2>
            <form onSubmit={ editProduct }>
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
                    className="d-block btn btn-success"
                    type="submit"
                >
                    Complete
                </button>
                <Link
                    to={`/products`}
                    id="add-product-btn"
                    className="d-block btn btn-primary mt-3"
                    type="submit"
                >
                    Go Back
                </Link>
            </form>
        </div>
    );
};

export default EditProduct;