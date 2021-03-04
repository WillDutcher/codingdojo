import React, { useState, useEffect } from 'react';
import io from 'socket.io-client';

const Chat = (props) => {
    const [ socket ] = useState(() => io(':8000'));
    const [ socketMessage, setSocketMessage ] = useState("Test Message");
    const [ name, setName ] = useState("");

    useEffect(() => {
        return () => socket.disconnect(true);
    }, [socket]);

    const saySomething = (e) => {
        console.log("Button clicked!");
        setSocketMessage("Hi, " + name + "!");
        socket.emit("welcome_msg_chat", socketMessage)
        setName("");
    }

    return (
        <div>
            <h1>Socket Test</h1>
            <h3 className="text-danger">{ socketMessage }</h3>
            <input type="text" onChange={ (e) => setName(e.target.value)} value={ name } />
            <button
                className="btn btn-lg btn-warning"
                onClick={ saySomething }
            >
                Chat Button
            </button>
        </div>
    );
};

export default Chat;