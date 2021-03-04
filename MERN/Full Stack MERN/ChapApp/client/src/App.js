import React, { useState, useEffect } from 'react';
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import io from 'socket.io-client';

import Chat from './components/Chat';
import './App.css';

function App() {
  const [ socket ] = useState(() => io(':8000'));
  const [ socketMessage, setSocketMessage ] = useState("Connecting to server")

    useEffect(() => {
        socket.on('your_socket_id', (data) => {
            console.log(`The server told us that our socket id is: ${data}`);
        });
        
        return () => socket.disconnect(true);
    }, []);

    const setMyMessage = () => {
      setSocketMessage("I pressed the button!")
      socket.emit("welcome_msg", "Hi there!");
      console.log("Button clicked and message sent to server.");
    }
  return (
    <div className="App">
      <div>
          <h1>Socket Test</h1>
          <h4>{  }</h4>
          <h2>
            { socketMessage }
          </h2>
          <button
            className="btn btn-lg btn-outline-info"
            onClick={(e) => setMyMessage() }
          >
            Click Me
          </button>
      </div>
      <hr/>
      <Chat />
    </div>
  );
}

export default App;
