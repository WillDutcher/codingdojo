import React, { useState } from 'react';

const Form = (props) => {
    const { onSubmitHandler, initialFirstName, initialLastName, initialSport, initialTeam } = props;
    const [ firstName, setFirstName ] = useState(initialFirstName);
    const [ lastName, setLastName ] = useState(initialLastName);
    const [ sport, setSport ] = useState(initialSport);
    const [ team, setTeam ] = useState(initialTeam);

    return (
        <form onSubmit={(e) => { onSubmitHandler(e, { firstName, lastName, sport, team })}}>
            <p>
                <label>First Name</label>
                <input type='text' name='firstName' value={ firstName } onChange={ (e) => { setFirstName(e.target.value) }}/>
            </p>
            <p>
                <label>Last Name</label>
                <input type='text' name='lastName' value={ lastName } onChange={ (e) => { setLastName(e.target.value) }}/>
            </p>
            <p>
                <label>Sport</label>
                <input type='text' name='sport' value={ sport } onChange={ (e) => { setSport(e.target.value) }}/>
            </p>
            <p>
                <label>Team</label>
                <input type='text' name='team' value={ team } onChange={ (e) => { setTeam(e.target.value) }}/>
            </p>
            <input type='submit' />
        </form>
    );
};

export default Form;