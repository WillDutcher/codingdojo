import React, { useEffect } from "react";
import { navigate } from "@reach/router";
import axios from 'axios';
import Login from "../components/Login";
import RegisterUser from "../components/RegisterUser";

const LogReg = () => {

  return (
    <div className="container-flex">
      <Login />
      <hr />
      <RegisterUser />
      <div>
        <button onClick={() => navigate('/skiff')}>Back to All Skiffs</button>
      </div>
    </div>
  );
};

export default LogReg;