import React, { useState } from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';

const ProductForm = () => {
    // KEEP TRACK OF WHAT IS BEING TYPE VIA useState HOOK
    const [ title, setTitle ] = useState("");
    const [ price, setPrice ] = useState(0);
    const [ desc, setDesc ] = useState("");

    const onSubmitHandler = (e) => {
        e.preventDefault();
        axios.post('http://localhost:8000/api/product', {
            title,
            price,
            desc
        })
            .then(res => console.log(res))
            .then(navigate(`/products`))
            .then(console.log("Submitted!"))
            .catch(err => console.log(err))
        setTitle("");
        setPrice("");
        setDesc("");
    }

    return (
        <div className="form-container">
            <h3 className="mb-3">Product Manager</h3>
            <form onSubmit={ onSubmitHandler }>
                <div className="product-details mb-3">
                    <div className="form-group d-flex align-items-center mb-0">
                        <label className="m-0" htmlFor="title">Title</label>
                        <input
                            id="title"
                            className="form-control"
                            name="title"
                            type="text"
                            onChange={ (e) => setTitle(e.target.value) }
                            value={ title }
                        />
                    </div>
                </div>
                <div className="product-details mb-3">
                    <div className="form-group d-flex align-items-center mb-0">
                        <label className="m-0" htmlFor="price">Price</label>
                        <input
                            id="price"
                            className="form-control"
                            name="price"
                            type="text"
                            onChange={ (e) => setPrice(e.target.value) }
                            value={ price }
                        />
                    </div>
                </div>
                <div className="product-details mb-3">
                    <div className="form-group d-flex align-items-center mb-0">
                        <label className="m-0" htmlFor="desc">Description</label>
                        <textarea
                            id="desc"
                            className="form-control"
                            name="desc"
                            rows="2"
                            placeholder="Enter product description"
                            onChange={ (e) => setDesc(e.target.value) }
                            value={ desc }
                        />
                    </div>
                </div>
                <input type="submit" className="btn btn-primary mt-2 py-1 px-3" value="Create Product"/>
            </form>
        </div>
    );
};

export default ProductForm;