import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import PlayerForm from '../components/PlayerForm';

const UpdatePlayer = (props) => {
    const { id } = props;
    const [ name, setName ] = useState();
    const [ position, setPosition ] = useState();
    const [ loaded, setLoaded ] = useState(false);
    const [ errors, setErrors ] = useState();

    useEffect(() => {
        axios.get(`http://localhost:8000/api/players/${ id }`)
            .then((res) => {
                const updatedPlayer = res.data;
                console.log(updatedPlayer);
                setName(updatedPlayer.name)
                setPosition(updatedPlayer.position);
                setLoaded(true)
            })
            .catch((err) => {
                console.log(err);
            })
    }, [id]);

    const updatePlayer = (player) => {
        axios.put(`http://localhost:8000/api/players/${ id }`, {
            name: player.name,
            position: player.position
        })
            .then((res) => {
                console.log(res.data);
                navigate(`/players/list`);
            })
            .catch((err) => {
                console.log(err.response)
                setErrors(err.response.data.errors)
            })
    };

    return (
        <div>
            <h1 className="text-center">Update Player</h1>
            {
                loaded && (
                    <PlayerForm onSubmitProp={ updatePlayer } initialName={ name } initialPosition={ position } initialErrors={ errors } />
                )
            }
        </div>
    );
};

export default UpdatePlayer;