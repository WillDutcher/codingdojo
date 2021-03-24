import './App.css';
import React from 'react';
import { Router } from '@reach/router';
import NewSkiff from './components/NewSkiff';
import EditSkiff from './components/EditSkiff';
import OneSkiff from './components/OneSkiff';
import AllSkiffs from './components/AllSkiffs';
import Header from './views/Header';
import LogReg from './views/LogReg';

function App() {
  const NotFound = () => {
    return (
      <div>Route not Found</div>
    )
  };

  return (
    <div className="App">
      <Header />
      <Router>
        <AllSkiffs path="/skiff" />
        <NewSkiff path="/skiff/new" />
        <OneSkiff path="/skiff/:id" />
        <EditSkiff path="/skiff/:skiffId/edit" />
        <LogReg path="/logreg" />
        <NotFound default />
      </Router>
    </div>
  );
}

export default App;
