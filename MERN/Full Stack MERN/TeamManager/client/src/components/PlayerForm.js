import React, { useState } from 'react';
import { Link } from '@reach/router';

const PlayerForm = (props) => {
    const { initialName, initialPosition, onSubmitProp, initialErrors } = props;
    const [ name, setName ] = useState(initialName);
    const [ position, setPosition ] = useState(initialPosition ? initialPosition : "QB");
    // const [ errors, setErrors ] = useState({});

    const onSubmitHandler = (e) => {
        e.preventDefault();
        onSubmitProp({ name, position });
    };

    return (
        <form onSubmit={ onSubmitHandler }>
            <div className="form-group">
                <label htmlFor="name">
                    Name:
                    {
                        initialErrors && (
                            <>
                                { initialErrors.name ?
                                    <span className="error-text ml-3 text-danger">{initialErrors.name.message}</span>
                                    : null
                                }
                            </>
                        )
                    }
                </label>
                
                <input
                    id="name"
                    name="name"
                    className="form-control"
                    type="text"
                    placeholder="Enter player name"
                    onChange={ (e) => setName(e.target.value) }
                    value={ name }
                />
            </div>
            <div className="form-group">
                <label htmlFor="position">Position:</label>
                {
                    initialErrors && (
                        <>
                            { initialErrors.position ?
                                <span className="error-text ml-3 text-danger">{initialErrors.position.message}</span>
                                : null
                            }
                        </>
                    )
                }
                <select
                    id="position"
                    name="position"
                    className="form-control"
                    type="text"
                    onChange={ (e) => setPosition(e.target.value) }
                    value={ position }
                >
                    <option value="QB">Quarterback</option>
                    <option value="RB">Running Back</option>
                    <option value="TE">Tight End</option>
                    <option value="WR">Wide Receiver</option>
                    <option value="OL">Offensive Line</option>
                    <option value="DL">Defensive Line</option>
                    <option value="LB">Linebacker</option>
                    <option value="CB">Cornerback</option>
                    <option value="S">Safety</option>
                    <option value="K">Kicker</option>
                    <option value="P">Punter</option>
                    <option value="Coach">Coach</option>
                </select>
            </div>
            <button className="submit-btn btn btn-sm btn-primary mr-3 mt-3" type="submit" >
                Submit
            </button>
            <Link to="/players/list" className="btn-resize cancel-btn btn btn-sm btn-secondary mt-3">Cancel</Link>
        </form>
    );
};

export default PlayerForm;