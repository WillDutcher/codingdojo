import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Link } from '@reach/router';
import PopUp from '../components/PopUp';

const AllPlayers = (props) => {
    const [ players, setPlayers ] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:8000/api/players')
            .then((res) => {
                console.log(res.data);
                setPlayers(res.data);
            })
            .catch((err) => {
                console.log(err);
            })
    }, []);

    const removeFromDom = (playerId) => {
        const newPlayersList = players.filter(player => player._id !== playerId)
        setPlayers(newPlayersList);
    }

    return (
        <div>
            <table id="player-form" className="table table-striped table-bordered table-hover mt-3">
                <thead>
                    <tr>
                        <th className="table-dark">Player Name</th>
                        <th className="table-dark">Preferred Position</th>
                        <th className="table-dark">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        players.map((player, index) => {
                            return (
                                <tr key={ index }>
                                    <td className="player-title"><Link to={`/players/${ player._id }/edit`}>{ `${ player.name }` }</Link></td>
                                    <td className="player-title">{ `${ player.position }` }</td>
                                    <td align="center">
                                        {/* <button className="btn btn-sm btn-danger">Delete</button> */}
                                        <PopUp id={ player._id} name={ player.name } position={ player.position } removeFromDom={ removeFromDom } />
                                    </td>
                                </tr>
                            )
                        })
                    }
                </tbody>
            </table>
        </div>
    );
};

export default AllPlayers;