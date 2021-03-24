import React from "react";
<<<<<<< HEAD
import { Router, Redirect } from "@reach/router";
=======
import { Link, Router, Redirect } from "@reach/router";
>>>>>>> 2b7e7b94b3973307276124e85f29a017348ca8d8

import Header from "./views/Header";
import Home from "./views/Home";
// import OrderForm from './components/OrderForm';
import Registration from "./views/Registration";
import Login from "./views/Login";
import Order from "./views/Order";
import Fave from "./views/Fave";
import Random from "./views/Random";
import GetOne from "./views/GetOne";
<<<<<<< HEAD
import MenuForm from "./components/MenuForm";
=======
>>>>>>> 2b7e7b94b3973307276124e85f29a017348ca8d8
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "./App.css";

function App() {
  const NotFound = () => {
    return (
      <div>
        <h1>
          Error 404 - Route Not Found
          <br />
        </h1>
        <h3 className="mt-5">
          <Link className="text-primary" to="/">
            Go Home
          </Link>
        </h3>
      </div>
    );
  };

  return (
    <div className="App container">
      <Header />
      {/* <OrderForm /> */}
      <Router>
        <Home path="/" />
        <Redirect from="/home" to="/" noThrow="true" />
<<<<<<< HEAD
        <MenuForm path="/menu" />
=======
        <Redirect from="/menu" to="/" noThrow="true" />
>>>>>>> 2b7e7b94b3973307276124e85f29a017348ca8d8
        <Registration path="/user/reg" />
        <Login path="/user/login" />
        <Order path="/menu/order" />
        <Fave path="/menu/fave" />
        <Random path="/menu/random" />
        <GetOne path="/menu/:id" />
<<<<<<< HEAD
=======
        <NotFound default />
>>>>>>> 2b7e7b94b3973307276124e85f29a017348ca8d8
      </Router>
    </div>
  );
}

export default App;
