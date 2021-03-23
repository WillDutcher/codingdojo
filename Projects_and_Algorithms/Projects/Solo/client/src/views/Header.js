import React, { useEffect } from "react";
import { Link, navigate } from "@reach/router";
import axios from "axios";
import Cookies from "js-cookie";
import icon from "../images/pp_logo.png";

const Header = () => {
  useEffect(() => {
    axios
      .get("http://localhost:8000/api/user/loggedin", { withCredentials: true })
      .then((res) => {
        console.log(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  const checkForToken = () => {
    if (Cookies.get("userLoginToken") === "true") {
      return true;
    } else {
      return false;
    }
  };

  const logout = (e) => {
    e.preventDefault();
    Cookies.remove("userLoginToken");
    Cookies.remove("userLoginId");
    axios
      .post(
        "http://localhost:8000/api/user/logout",
        {},
        {
          withCredentials: true,
        }
      )
      .then((res) => {
        console.log(res.data);
        navigate("/");
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div className="header d-flex justify-content-between align-items-center">
      <Link to={"/"}>
        <img src={icon} alt="Logo for Paolo's Pizzaria" className="w-100" />
      </Link>
      <div className="w-50 text-center">
        <h3>Paolo's Pizzaria</h3>
        <h6>123 Main St | 555-999-1234</h6>
      </div>
      <nav className="w-25">
        <ul className="d-flex list-unstyled justify-content-between">
          <Link to={"/"}>Home</Link>
          <Link to={"/menu/order"}>Order</Link>
          <li>Account</li>
          { checkForToken() ? (
            <Link onClick={(e) => logout(e)} to={"/"}>
              Log Out
            </Link>
          ) : (
            <Link to={"/user/login"}>Log In</Link>
          )}
        </ul>
        <Link to={"/user/reg"}>Don't have an account? Register now!</Link>
      </nav>
    </div>
  );
};

export default Header;
