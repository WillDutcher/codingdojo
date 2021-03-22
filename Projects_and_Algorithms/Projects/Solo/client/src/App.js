import React from 'react';
import { Router, Redirect } from '@reach/router';

import Header from './views/Header';
import Home from './views/Home';
// import OrderForm from './components/OrderForm';
import Registration from './views/Registration';
import Login from './views/Login';
import Order from './views/Order';
import Fave from './views/Fave';
import Random from './views/Random';
import GetOne from './views/GetOne';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
import './App.css';

function App() {
  return (
    <div className="App container">
      <Header />
      {/* <OrderForm /> */}
      <Router>
        <Home path='/' />
        <Redirect from='/home' to='/' noThrow='true' />
        <Registration path='/user/reg' />
        <Login path='/user/login' />
        <Order path='/menu/order' />
        <Fave path='/menu/fave' />
        <Random path='/menu/random' />
        <GetOne path='/menu/:id' />
      </Router>
    </div>
  );
}

export default App;
