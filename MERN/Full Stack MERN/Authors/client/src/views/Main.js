import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import AuthorForm from '../components/AuthorForm';

const Main = (props) => {
    const [ errors, setErrors ] = useState();

    const addAuthor = (author) => {
        axios.post(`http://localhost:8000/api/authors`, author)
            .then((res) => {
                console.log(res)
                navigate('/authors')
            })
            .catch((err) => {
                console.log(err.response)
                setErrors(err.response.data.errors)
            })
    };

    return (
        <div>
            <AuthorForm onSubmitProp={ addAuthor } initialName="" initialErrors={ errors }/>
            {
                errors && (
                    <span className="d-block text-center text-danger">
                        { errors?.name?.properties?.message }
                    </span>
                )                    
            }
        </div>
    );
};

export default Main;