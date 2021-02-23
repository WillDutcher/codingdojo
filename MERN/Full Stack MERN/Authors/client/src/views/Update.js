import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import AuthorForm from '../components/AuthorForm';
import PageNotFound from './PageNotFound';

const Update = (props) => {
    const { id } = props;
    const [ author, setAuthor ] = useState();
    const [ errors, setErrors ] = useState();
    const [ loaded, setLoaded ] = useState(false);

    useEffect(() => {
        axios.get(`http://localhost:8000/api/authors/${ id }`)
            .then((res => {
                console.log(res.data)
                setAuthor(res.data)
                setLoaded(true)
            }))
            .catch((err) => {
                setErrors(err.response.data.errors)
            })
    }, [id]);

    const updateAuthor = (e) => {
        axios.put(`http://localhost:8000/api/authors/${ id }`, e)
            .then((res) => console.log(res))
            .then((res) => {
                navigate(`/authors`);
            })
            .catch((err) => {
                console.log(err.response)
                setErrors(err.response.data.errors)
            })
    };

    if (author === null || author === "") {
        return <PageNotFound />
    }

    return (
        <div>
            {
                loaded && (
                    <AuthorForm onSubmitProp={ updateAuthor } initialName={ author.name } initialErrors={ errors } />
                )
            }
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

export default Update;