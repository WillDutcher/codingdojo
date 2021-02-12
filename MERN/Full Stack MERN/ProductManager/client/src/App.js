import React from 'react';
import { Router } from '@reach/router';
import Main from './views/Main';
import Detail from './views/Detail';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  return (
    <div className="container text-center pt-5">
      <Router>
        <Main path="products/" />
        <Detail path="products/:id" />
      </Router>
    </div>
  );
};

export default App;
