import React, { useState } from "react";
import axios from "axios";
import { navigate } from "@reach/router";
import Cookies from "js-cookie";

const Login = (props) => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  const checkForToken = () => {
    if (Cookies.get("userLoginToken") === "true") {
      return true;
    } else {
      return false;
    }
  };

  const login = (e) => {
    e.preventDefault();

    axios
      .post(
        "http://localhost:8000/api/user/login",
        {
          email,
          password,
        },
        {
          withCredentials: true,
        }
      )
      .then((res) => {
        Cookies.set("userLoginToken", res.data.userLogged.hasAccount);
        checkForToken();
        console.log(res.data);
        navigate("/menu/order");
      })
      .catch((err) => {
        console.log(err);
        setErrorMessage(err.response.data.msg);
      });
  };

  return (
    <div>
      <form
        id="login-form"
        className="d-flex flex-column justify-content-between align-items-center"
        onSubmit={login}
      >
        <h2 className="mt-4">Login</h2>
        <div className="mt-4">
          <label htmlFor="loginEmail">Email</label>
          <input
            id="loginEmail"
            name="loginEmail"
            className=""
            type="text"
            onChange={(e) => setEmail(e.target.value)}
            value={email}
          />
        </div>
        <div className="mt-2">
          <label htmlFor="loginPassword">Password</label>
          <input
            id="loginPassword"
            name="loginPassword"
            className=""
            type="password"
            onChange={(e) => setPassword(e.target.value)}
            value={password}
          />
        </div>
        <div className="text-center mt-3 mb-3">
          <button
            className="login-btn btn btn-primary btn-sm mb-1"
            type="submit"
          >
            Log In
          </button>
        </div>
        <p className="text-danger text-center">
          {errorMessage ? errorMessage : ""}
        </p>
      </form>
    </div>
  );
};

export default Login;
