// Show a form to create, update, or delete a user's favorite author(s)
import React, { useState } from 'react';
import { navigate } from '@reach/router';

const AuthorForm = (props) => {
    const { initialName, onSubmitProp, initialErrors } = props;
    const [ name, setName ] = useState(initialName);

    const onSubmitHandler = (e) => {
        e.preventDefault();
        onSubmitProp({ name });
    };

    return (
        <form onSubmit={ onSubmitHandler }>
            <div className="form-group">
                <label htmlFor="name">Name:</label>
                <input
                    id="name"
                    name="name"
                    className="form-control m-0"
                    type="text"
                    placeholder="Enter author name"
                    onChange={ (e) => setName(e.target.value) }
                    value={ name }
                />
                {
                    initialErrors && (
                        <span className="text-danger">
                            { initialErrors?.title?.properties?.message }
                        </span>
                    )
                }
                <div className="d-flex mt-3">
                    <button id="cancel-btn" className="btn btn-sm btn-primary mr-3" onClick={ (e) => { navigate("/authors") }}>
                        Cancel
                    </button>
                    <button id="add-author-btn" className="btn btn-sm btn-primary mr-3" type="submit" >
                        Submit
                    </button>
                </div>
            </div>
        </form>
    );
};

export default AuthorForm;