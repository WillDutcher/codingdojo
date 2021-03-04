import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import Form from '../components/Form';
import DeleteButton from '../components/DeleteButton';

const EditView = (props) => {
    const { id } = props;
    const [ athlete, setAthlete ] = useState({});
    const [ loaded, setLoaded ] = useState(false);
    const [ errors, setErrors ] = useState([]);

    useEffect(() => {
        axios.get(`http://localhost:8000/api/athletes/${ id }`)
            .then((res) => {
                setAthlete(res.data);
                setLoaded(true);
            })
            .catch((err) => {
                console.log(err);
            })
    }, [id]);

    const onSubmitHandler = (e, data) => {
        e.preventDefault();
        axios.put(`http://localhost:8000/api/athletes/${ id }/edit`, data)
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
    }

    return (
        <div>
            <h1>Editing { athlete.firstName } { athlete.lastName }</h1>
            { errors.map((error, index) => {
                return (
                    <p key={ index } className="text-danger">{ error }</p>
                )
            })}
            { loaded &&
                <Form
                    onSubmitHandler={ onSubmitHandler }
                    initialFirstName ={ athlete.firstName }
                    initialLastName ={ athlete.lastName }
                    initialSport ={ athlete.sport }
                    initialTeam ={ athlete.team }
                />
            }
            <DeleteButton />
        </div>
    );
};

export default EditView;