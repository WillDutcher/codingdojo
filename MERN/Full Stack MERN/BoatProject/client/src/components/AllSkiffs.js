import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';
import io from 'socket.io-client';

const AllSkiffs = (props) => {
    const [ socket, setSocket ] = useState(() => io(":8000"));
    const [ socketMessage, setSocketMessage ] = useState("connecting to server");
    
    const [ allSkiffs, setAllSkiffs ] = useState([]);

    useEffect(() => {
        console.log('socket use effect method');
        
        // listener on socket
        socket.on("new_added_skiff", (data) => {
            console.log("new added skiff");
            console.log(data);
            setSocketMessage(`Check out ${ data.ownerName }'s new ${ data.modelName }skiff!`);
            setAllSkiffs([ data, ...allSkiffs ]);
        });

        // close socket connection!!! or you'll have memory leak!!!
        return () => socket.disconnect(true);

    }, [allSkiffs, socket]);

    useEffect(() => {
        axios.get('http://localhost:8000/api/skiffs')
            .then((res) => {
                console.log(res.data);
                setAllSkiffs(res.data);
            })
            .catch((err) => {
                console.log("Error received", err);
            })
    }, []);

    const deleteSkiff = (skiffId) => {
        axios.delete(`http://localhost:8000/api/skiffs/${ skiffId }`)
            .then((res) => {
                const deletedSkiff = res.data;
                console.log("Skiff deleted!")
                const newSkiffList = allSkiffs.filter(skiff => skiff._id !== skiffId)
                setAllSkiffs(newSkiffList);
            })
            .catch((err) => {
                console.log(err);
            })
    }

    return (
        <div>
            <h2>All Skiffs</h2>
            <h3 className="text-success">{ socketMessage }</h3>
            <button onClick={() => navigate('/skiffs/new')}>Create New Skiff</button>
            {
                allSkiffs.map((skiff, idx) => (
                    <div key={ idx }>
                        <hr/>
                        <img
                            src={ skiff.pictureUrl } 
                            alt={ skiff.description }
                        />
                        <h4>{`${skiff.ownerName}'s ${skiff.modelName} Skiff`}</h4>
                        <div className="d-flex justify-content-center">
                            <button className="btn btn-primary" onClick={ () => navigate(`/skiffs/${ skiff._id }`)}>View Skiff Details</button>
                            {/* <button className="btn btn-success" onClick={ () => navigate(`/skiff/${ skiff._id }/edit`)}>Update Skiff</button> */}
                            <button className="btn btn-info" onClick={() => navigate( `/skiffs/${ skiff._id }/edit`) }>Edit</button>
                            <button className="btn btn-danger" onClick={ () => deleteSkiff(skiff._id) }>Delete Skiff</button>
                        </div>
                    </div>
                ))
            }
            <button onClick={() => window.history.back()}>Back</button>
        </div>
    );
};

export default AllSkiffs;