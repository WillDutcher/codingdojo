import React from 'react';
import { Router, Link } from '@reach/router';
import CreateProduct from './components/CreateProduct';
import EditProduct from './components/EditProduct';
import SingleProduct from './components/SingleProduct';
import AllProducts from './components/AllProducts';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  // Set a default page in case user inputs wrong route
  const NotFound = () => {
    return (
      <div>
        <h1>
          Route Not Found.<br/>
          <Link to="/products">Go Home</Link>
        </h1>
      </div>
    )
  }

  return (
    <div className="App">
      <Router>
        <AllProducts path="/products" />
        <CreateProduct path="/products/new" />
        <SingleProduct path="/products/:id" />
        <EditProduct path="/products/:id/edit" />
        <NotFound default />
      </Router>
    </div>
  );
};

export default App;
