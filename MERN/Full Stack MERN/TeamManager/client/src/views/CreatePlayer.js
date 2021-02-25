import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import PlayerForm from '../components/PlayerForm';

const CreatePlayer = (props) => {
    const [ errors, setErrors ] = useState();

    const addPlayer = (player) => {
        axios.post(`http://localhost:8000/api/players`, player)
            .then((res) => {
                console.log(res);
                navigate('/players/list')
            })
            .catch((err) => {
                console.log(err.response)
                setErrors(err.response.data.errors)
            })
    };

    return (
        <div>
            <h1 className="text-center">Add Player</h1>
            <PlayerForm onSubmitProp={ addPlayer } initialName="" initialPosition="" initialErrors={ errors } />            
        </div>
    );
};

export default CreatePlayer;