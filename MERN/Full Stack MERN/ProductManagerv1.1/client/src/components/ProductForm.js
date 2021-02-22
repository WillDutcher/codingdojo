// Show form to create and/or update products
import React, { useState } from 'react';

const ProductForm = (props) => {
    const { initialTitle, initialPrice, initialDesc, onSubmitProp } = props;        // See App.js to see these passed in props
    const [ title, setTitle ] = useState(initialTitle);                             // Use value of whatever initial title is (for update OR new!)
    const [ price, setPrice ] = useState(initialPrice);                             // Use value of whatever initial price is (for update OR new!)
    const [ desc, setDesc ] = useState(initialDesc);                                // Use value of whatever initial description is (for update OR new!)

    const onSubmitHandler = (e) => {                                                // Handler called when form submitted
        // e.preventDefault();                                                         // Prevent default behavior; Note: API is now reached within Main.js
        // If I prevent default, I can update automatically--do I want this?
        onSubmitProp({ title, price, desc });                                       // See Main.js; this will be either createProduct or updateProduct
    };

    return (
        <form onSubmit={ onSubmitHandler }>
            <h1 className="mb-3">Product Manager</h1>
            <p className="text-center">Add a product to the product list, below.</p>
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
                className="btn btn-sm btn-primary"
                type="submit"
            >
                Submit
            </button>
        </form>
    );
};

export default ProductForm;