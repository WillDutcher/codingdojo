import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import Form from '../components/Form';

const CreateView = (props) => {
    const [ errors, setErrors ] = useState([]);
    
    const onSubmitHandler = (e, data) => {
        e.preventDefault();
        axios.post(`http://localhost:8000/api/athletes/`, data)
            .then((res) => {
                navigate('/');
            })
            .catch((err) => {
                console.log(err);
                const errorResponse = err.response.data.errors;
                const errorArray =[];

                for (const key of Object.keys(errorResponse)) {
                    errorArray.push(errorResponse[key].message);
                }
                setErrors(errorArray);
            })
    };

    return (
        <div>
            <h1>Create a new athlete</h1>
            { errors.map((error, index) => {
                return (
                    <p key={ index } className="text-danger">{ error }</p>
                )
            })}
            <Form
                onSubmitHandler={ onSubmitHandler }
                initialFirstName =""
                initialLastName =""
                initialSport =""
                initialTeam =""
            />
        </div>
    );
};

export default CreateView;