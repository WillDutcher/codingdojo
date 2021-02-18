import React, { useEffect, useState } from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';

const Update = (props) => {
    const { id } = props;
    const [ title, setTitle ] = useState();
    const [ price, setPrice ] = useState();
    const [ desc, setDesc ] = useState();

    useEffect(() => {
        axios.get(`http://localhost:8000/api/products/${id}`)
            .then(res => {
                setTitle(res.data.title);
                setPrice(res.data.price);
                setDesc(res.data.desc);
            })
    }, [id]);

    const updateProduct = (e) => {
        e.preventDefault();
        axios.put(`http://localhost:8000/api/products/${id}`, {
            title,  // this is shortcut syntax for title: title
            price,  // this is shortcut syntax for price: price
            desc    // this is shortcut syntax for desc: desc
        })
            .then(res => console.log(res))
            .then(console.log("Updated!"))
            .then(navigate(`/products/`))
    };

    return (
        <div>
            <h1>Update Product</h1>
            <form onSubmit={ updateProduct }>
                <p>
                    <label htmlFor="title">Title:</label><br/>
                    <input
                        id="title"
                        type="text"
                        name="title"
                        onChange={ (e) => { setTitle(e.target.value) }}
                        value={ title }
                    />
                </p>
                <p>
                    <label htmlFor="price">Price:</label><br/>
                    <input
                        id="price"
                        type="text"
                        name="price"
                        onChange={ (e) => { setPrice(e.target.value) }}
                        value={ price }
                    />
                </p>
                <p>
                    <label htmlFor="desc">Description:</label><br/>
                    <textarea
                            id="desc"
                            className="form-control"
                            name="desc"
                            rows="2"
                            onChange={ (e) => setDesc(e.target.value) }
                            value={ desc }
                    />
                </p>
                <input className="btn btn-primary py-1 px-3" type="submit" />
            </form>
        </div>
    );
};

export default Update;