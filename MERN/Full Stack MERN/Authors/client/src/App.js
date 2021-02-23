import React from 'react';
import { Router, Redirect } from '@reach/router';
import AuthorList from './views/AuthorList';
import Main from './views/Main';
import Update from './views/Update';
import PageNotFound from './views/PageNotFound';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  
  return (
    <div className="App">
      <h1>Favorite Authors</h1>
      <Router>
        <Redirect from="/" to="/authors" noThrow="true" />
        <Main path="/authors/new" />
        <AuthorList path="/authors" />
        <Update path="/authors/:id/edit" />
        <PageNotFound default />
      </Router>
    </div>
  );
};

export default App;