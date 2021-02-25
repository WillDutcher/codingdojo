import React, { useState } from 'react';
import { Router, Redirect, Link, Match } from '@reach/router';
import AllPlayers from './views/AllPlayers';
import PageNotFound from './views/PageNotFound';
import CreatePlayer from './views/CreatePlayer';
import UpdatePlayer from './views/UpdatePlayer';
import ManagePlayerStatus from './views/ManagePlayerStatus';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  const NavLink = (props) => (
    <Link
      { ...props }
      getProps={({ isCurrent }) => {
        return {
          style: {
            color: isCurrent ? "red" : "#007bff",
            fontWeight: isCurrent ? "bold" : "normal",
            textDecoration: "none"
          }
        };
      }}
    />
  )
  return (
    <div className='App'>
      <div id="manage">
        <NavLink className="nav-links" to="/players/list">Manage Players</NavLink>
        <span className="nav-links mx-3" >|</span>
        <NavLink className="nav-links" to="/players/status" >Manage Player Status</NavLink>
          <div id="add-list">
            <NavLink className="nav-links" to="/players/list">List</NavLink>
            <span className="nav-links mx-3" >|</span>
            <NavLink className="nav-links" to="/players/new" >Add Player</NavLink>
            <Router className="router">
              <Redirect from='/' to='/players/list' noThrow='true' />
              <Redirect from='/players' to='/players/list' noThrow='true' />
              <AllPlayers path='/players/list' />
              <CreatePlayer path='/players/new/' />
              <UpdatePlayer path='/players/:id/edit' />
              <PageNotFound default />
            </Router>
          </div>
      </div>
    </div>
  );
}

export default App;
