import React from "react";
import { Link, Router, Redirect } from "@reach/router";

import Header from "./views/Header";
import Home from "./views/Home";
// import OrderForm from './components/OrderForm';
import Registration from "./views/Registration";
import Login from "./views/Login";
import Order from "./views/Order";
import Fave from "./views/Fave";
import Random from "./views/Random";
import GetOne from "./views/GetOne";
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
        <Redirect from="/menu" to="/" noThrow="true" />
        <Registration path="/user/reg" />
        <Login path="/user/login" />
        <Order path="/menu/order" />
        <Fave path="/menu/fave" />
        <Random path="/menu/random" />
        <GetOne path="/menu/:id" />
        <NotFound default />
      </Router>
    </div>
  );
}

export default App;
