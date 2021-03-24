import React from 'react';
import { Router, Redirect } from '@reach/router';
import NewSkiff from './components/NewSkiff';
import EditSkiff from './components/EditSkiff';
import SingleSkiff from './components/SingleSkiff';
import AllSkiffs from './components/AllSkiffs';
import Header from './views/Header';
import LogReg from './views/LogReg';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  // Set this as default in case there's an issue
  const NotFound = () => {
    return (
      <div>
        Route not found.
      </div>
    )
  }
  return (
    <div className="App">
      <Header />
      <Router>
        <Redirect from="/" to="/skiffs" noThrow="true" />
        <AllSkiffs path="/skiffs" />
        <NewSkiff path="/skiffs/new" />
        <SingleSkiff path="/skiffs/:id" />
        <EditSkiff path="/skiffs/:id/edit" />
        <LogReg path="/logreg" />
        <NotFound default />
      </Router>
    </div>
  );
}

export default App;
