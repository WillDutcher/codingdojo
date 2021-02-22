import React from 'react';
import { Router, Link } from '@reach/router';
import Main from './views/Main';
import Detail from './views/Detail';
import Update from './views/Update';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  // Set a default page in case user inputs wrong route
  const NotFound = () => {
    return (
      <div>
        <h1>
          Error 404 - Route Not Found<br/>
        </h1>
          <h3 className="mt-5"><Link className="text-success" to="/products">Go Home</Link></h3>
      </div>
    )
  }

  return (
    <div className="App">
      <Router>
        <Main path="/products" />
        <Detail path="/products/:id" />
        <Update path="/products/:id/edit" />
        <NotFound default />
      </Router>
    </div>
  );
};

export default App;
