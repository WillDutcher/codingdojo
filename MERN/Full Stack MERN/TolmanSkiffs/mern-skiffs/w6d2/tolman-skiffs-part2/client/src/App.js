import './App.css';
import React from 'react';
import { Router } from '@reach/router';
import NewSkiff from './components/NewSkiff';
import EditSkiff from './components/EditSkiff';
import OneSkiff from './components/OneSkiff';
import AllSkiffs from './components/AllSkiffs';

function App() {
  const NotFound = () => {
    return (
      <div>Route not Found</div>
    )
  };

  return (
    <div className="App">
      <Router>
        <AllSkiffs path="/skiff" />
        <NewSkiff path="/skiff/new" />
        <OneSkiff path="/skiff/:id" />
        <EditSkiff path="/skiff/:id/edit" />
        <NotFound default />
      </Router>
    </div>
  );
}

export default App;
