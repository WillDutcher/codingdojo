import React, { useEffect, useState } from 'react';
import PersonForm from '../components/PersonForm';
import PersonList from '../components/PersonList';
import axios from 'axios';

const Main = () => {
    const [ people, setPeople ] = useState([]);
    const [ loaded, setLoaded ] = useState(false);

    useEffect(() => {
        axios.get('http://localhost:8000/api/people')
            .then(res => {
                console.log(res.data);
                setPeople(res.data);
                setLoaded(true);
            });
    }, [loaded])
    
    return (
        <div>
            <PersonForm />
            <hr/>
            <u><h2>List of People</h2></u>
            { loaded && <PersonList people={ people } /> }
        </div>
    );
};

export default Main;


// const Main = () => {
//     const [ message, setMessage ] = useState("Loading...")
//     useEffect(() => {
//         axios.get('http://localhost:8000/api')
//             .then(res => setMessage(res.data.message))
//     }, []);
//     return (
//         <div>
//             {/* <h2>Message from the backend: { message }</h2> */}
//             <PersonForm />
//         </div>
//     );
// };

// export default Main;
