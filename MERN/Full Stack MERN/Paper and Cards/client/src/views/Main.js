import React, { useState } from 'react';
import axios from 'axios';
const Main = () {
    const [ title, setTitle ] = useState("");
    const [ pages, setPages ] = useState(0);
    // Create an array to store errors from the API
    const [ errors, setErrors ] = useState([]);
    
    const onSubmitHandler = (e) => {
        e.preventDefault();
        // Send a post request to our API to attempt to create a Book
        axios.post('http://localhost:8000/api.books', {
            title,
            pages
        })
            .then(res => console.log(res))                      // If successful, do something with the response
            .catch(err => {
                const errorResponse = err.res.data.errors;      // Get the errors from the err.res.data
                const errorArr = [];                            // Define a temp error array to push the messages in
                for (const key of Object.keys(errorResponse)) { // Loop through all errors and get the messages
                    errorArr.push(errorResponse[key].message)
                }
                // Set Errors
                setErrors(errorArr);
            })
    }

    return (
        <div>
            <form onSubmit={onSubmitHandler}>
                {errors.map((err, index) =>
                    <p key={index}>
                        {err}
                    </p>
                )}
                <p>
                    <label>Title</label>
                    <input type="text" onChange={ (e) => setTitle(e.target.value) } />
                </p>
                <p>
                    <label>Pages</label>
                    <input type="text" onChange={ (e) => setPages.apply(e.target.value)} />
                </p>
                <input type="submit" />
            </form>
        </div>
    )
}

export default Main;