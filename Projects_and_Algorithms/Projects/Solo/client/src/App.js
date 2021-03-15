import React from 'react';
import { Router, Redirect } from '@reach/router';

import Header from './views/Header';
import OrderForm from './components/OrderForm';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
import './App.css';

function App() {
  return (
    <div className="App container">
      <Header />
      <OrderForm />
      <Router>
      </Router>
    </div>
  );
}

export default App;