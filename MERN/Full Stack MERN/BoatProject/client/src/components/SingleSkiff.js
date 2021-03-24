import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const SingleSkiff = (props) => {
    const { id } = props;
    const [ skiff, setSkiff ] = useState({});

    useEffect(() => {
        axios.get(`http://localhost:8000/api/skiffs/${ id }`)
            .then((res) => {
                const newSkiff = res.data;
                console.log(newSkiff);
                setSkiff(newSkiff);
            })
            .catch((err) => {
                console.log(err);
            })
    }, []);
    return (
        <div>
            <h2>{skiff.ownerName}'s Skiff</h2>
            <img src={ skiff.pictureUrl } alt={ skiff.desc } />
            <p>Build Complete: { skiff.buildComplete ? <span>True</span> : <span>Not Yet!</span>}</p>
            <p>Owner Name: { skiff.ownerName }</p>
            <p>Builder Name: { skiff.builderName }</p>
            <p>Model Name: { skiff.modelName }</p>
            <p>Start Date: { (new Date(skiff.startDate)).toLocaleDateString("en-en") }</p>
            <p>Finish Date: { (new Date(skiff.finishDate)).toLocaleDateString("en-en") }</p>
            <p>Stock Length: { skiff.stockLength }</p>
            <p>Custom Length: { skiff.customLength }</p>
            <p>Picture Url: { skiff.pictureUrl }</p>
            <p>Description: { skiff.desc }</p>
            <button onClick={() => window.history.back()}>Back</button>
            <button onClick={() => navigate('/skiffs')}>All Skiffs</button>
        </div>
    );
};

export default SingleSkiff;