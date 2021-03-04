import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Link } from '@reach/router';
import DeleteButton from '../components/DeleteButton';

const IndexView = (props) => {
    const [ athletes, setAthletes ] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:8000/api/athletes')
            .then((res) => {
                setAthletes(res.data);
            })
            .catch((err) => {
                console.log(err);
            })
    }, []);

    return (
        <div>
            <h1>Athletes</h1>
            <Link to='/create'>Add Athlete</Link>
            <ul>
                { athletes.map((athlete, index) => {
                    return (
                        <li key={ index }>
                            <Link to={ `/${ athlete._id}` }>
                                { athlete.firstName } { athlete.lastName }
                            </Link> <span className="mx-2">|</span>
                            <Link to={ `/${ athlete._id }/edit` }>
                                Edit
                            </Link>
                            <DeleteButton id={ athlete._id } />
                        </li>
                    )
                })}
            </ul>
        </div>
    );
};

export default IndexView;