import React, { useEffect, useState } from "react";
import axios from "axios";
import { navigate } from "@reach/router";

const GetOne = (props) => {
  const { id } = props;
  const [userOrder, setUserOrder] = useState(null);
  const [deliveryCheckbox, setDeliveryCheckbox] = useState(false);
  const [tipCheckbox, setTipCheckbox] = useState(false);
  const [tip, setTip] = useState(0);
  let pizzaCost = 0;
  let crustCost = 0;
  let cheeseCost = 0;
  let sauceCost = 0;
  let toppingsCost = 0;
  let drinkCost = 0;
  let otherCost = 0;
  let deliveryFee = 0;
  let taxRate = 0.0625;
  let orderTotal =
    pizzaCost + toppingsCost + crustCost + cheeseCost + sauceCost;
  let currencyFormatter = new Intl.NumberFormat("en-US", {
    style: "currency",
    currency: "USD",
  });

  useEffect(() => {
    axios.get(`http://localhost:8000/api/menu/${id}`).then((res) => {
      const userOrder = res.data;
      console.log("userOrder");
      console.log(userOrder);
      setUserOrder(userOrder);
    });
  }, [id]);

  const makeOrder = () => {
    alert("Your order has been placed!");
    navigate("/");
  }

  if (!userOrder) return <h1>Loading...</h1>;

  return (
    <div>
      <h2 className="text-center mb-5">Order Confirmation</h2>
      <div className="user-order m-3 d-flex">
        <div className="pizzaOrder m-3">
          <span className="font-weight-bold">Pizza</span>
          <ul>
            {userOrder.pizza.size} {userOrder.pizza.crust} crust pizza with{" "}
            {userOrder.pizza.cheese} cheese and {userOrder.pizza.sauce} sauce
          </ul>
          <span className="font-weight-bold">Toppings</span>
          <ul>
            {userOrder.pizza.toppings.protein.pepperoni
              ? (toppingsCost += 1) && <li>pepperoni</li>
              : null}
            {userOrder.pizza.toppings.protein.sausage
              ? (toppingsCost += 1) && <li>sausage</li>
              : null}
            {userOrder.pizza.toppings.protein.ham
              ? (toppingsCost += 1) && <li>ham</li>
              : null}
            {userOrder.pizza.toppings.protein.chicken
              ? (toppingsCost += 1) && <li>chicken</li>
              : null}
            {userOrder.pizza.toppings.protein.bacon
              ? (toppingsCost += 1) && <li>any</li>
              : null}
            {userOrder.pizza.toppings.protein.impossibleMeat
              ? (toppingsCost += 1) && <li>impossible meat</li>
              : null}
            {userOrder.pizza.toppings.veggies.onion
              ? (toppingsCost += 1) && <li>onion</li>
              : null}
            {userOrder.pizza.toppings.veggies.mushroom
              ? (toppingsCost += 1) && <li>mushroom</li>
              : null}
            {userOrder.pizza.toppings.veggies.greenPepper
              ? (toppingsCost += 1) && <li>green pepper</li>
              : null}
            {userOrder.pizza.toppings.veggies.olive
              ? (toppingsCost += 1) && <li>olive</li>
              : null}
            {userOrder.pizza.toppings.veggies.jalapeno
              ? (toppingsCost += 1) && <li>jalapeno</li>
              : null}
            {userOrder.pizza.toppings.veggies.pineapple
              ? (toppingsCost += 1) && <li>pineapple</li>
              : null}
          </ul>
        </div>
        <div className="otherOrder m-3">
          <span className="font-weight-bold">Sides</span>
          <ul>
            {userOrder.sides.breadsticks
              ? (otherCost += 4) && <li>breadsticks</li>
              : null}
            {userOrder.sides.cheesesticks
              ? (otherCost += 4) && <li>cheesesticks</li>
              : null}
          </ul>
          <span className="font-weight-bold">Desserts</span>
          <ul>
            {userOrder.desserts.tiramasu
              ? (otherCost += 4) && <li>tiramasu</li>
              : null}
            {userOrder.desserts.canoli
              ? (otherCost += 4) && <li>canoli</li>
              : null}
          </ul>
          <span className="font-weight-bold">Drinks</span>
          <ul>
            {userOrder.drinks
              ? userOrder.drinks !== "-" &&
                (drinkCost += 3) && <li>{userOrder.drinks}</li>
              : null}
          </ul>
        </div>
      </div>
      <hr className="fancy" />
      {/* Math */}

      <ul>
        <li>
          {userOrder.pizza.size === "Personal"
            ? (pizzaCost += 5) && null
            : userOrder.pizza.size === "Small"
            ? (pizzaCost += 6) && null
            : userOrder.pizza.size === "Medium"
            ? (pizzaCost += 7) && null
            : userOrder.pizza.size === "Large"
            ? (pizzaCost += 8) && null
            : (pizzaCost += 9) && null}
        </li>
        <li>
          {userOrder.pizza.crust === "Stuffed"
            ? (crustCost += 2) && null
            : crustCost && null
            ? crustCost === undefined || crustCost === null || crustCost === ""
            : null}
        </li>
        <li>
          {userOrder.pizza.cheese === "Extra"
            ? (cheeseCost += 1) && null
            : userOrder.pizza.cheese === "Double"
            ? (cheeseCost += 2) && null
            : cheeseCost && null
            ? cheeseCost === undefined ||
              cheeseCost === null ||
              cheeseCost === ""
            : null}
        </li>
        <li>
          {userOrder.pizza.sauce === "Extra"
            ? (sauceCost += 1) && null
            : userOrder.pizza.sauce === "Double"
            ? (sauceCost += 2) && null
            : sauceCost
            ? sauceCost === undefined || sauceCost === null || sauceCost === ""
            : null}
        </li>
      </ul>

      <form>
        <div>
          <div className="delTip m-3 p-3 bg-">
            <div className="deliveryCheckbox">
              <h3 className="text-center">Delivery and Tip</h3>
              <input
                id="deliveryCheckbox"
                className=""
                name="deliveryCheckbox"
                type="checkbox"
                onChange={(e) => setDeliveryCheckbox(!deliveryCheckbox)}
                checked={deliveryCheckbox}
              />
              <label
                id="delivery-label"
                className=""
                htmlFor="deliveryCheckbox"
              >
                Delivery
              </label>
              {deliveryCheckbox ? (deliveryFee += 5) && null : null}
            </div>
            <div className="tipCheckbox">
              <input
                id="tipCheckbox"
                className=""
                name="tipCheckbox"
                type="checkbox"
                onChange={(e) => setTipCheckbox(!tipCheckbox)}
                checked={tipCheckbox}
              />
              <label id="tip-label" className="" htmlFor="tipCheckbox">
                Tip
              </label>
              {tipCheckbox ? (
                <input
                  type="number"
                  onChange={(e) => setTip(e.target.value)}
                  value={tip}
                />
              ) : null}
            </div>
          </div>
        </div>
      </form>
      {
        (orderTotal =
          pizzaCost + toppingsCost + crustCost + cheeseCost + sauceCost) && null
      }
      <table className="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th className="table-dark">Item</th>
            <th className="table-dark">Cost</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Pizza</td>
            <td>{currencyFormatter.format(orderTotal)}</td>
          </tr>
          <tr>
            <td>Sides & Desserts</td>
            <td>{currencyFormatter.format(otherCost)}</td>
          </tr>
          <tr>
            <td>Drinks</td>
            <td>{currencyFormatter.format(drinkCost)}</td>
          </tr>
          {deliveryFee < 5 ? null : (
            <tr>
              <td>Delivery Fee</td>
              <td>{currencyFormatter.format(deliveryFee)}</td>
            </tr>
          )}
          <tr>
            <td>
              <hr />
            </td>
            <td>
              <hr />
            </td>
          </tr>
          <tr>
            <td>Subtotal</td>
            <td>
              {currencyFormatter.format(
                orderTotal + otherCost + drinkCost + deliveryFee
              )}
            </td>
          </tr>
          <tr>
            <td>+ Tax</td>
            <td>
              {currencyFormatter.format(
                (orderTotal + otherCost + drinkCost + deliveryFee) * taxRate
              )}
            </td>
          </tr>
          <tr>
            <td>+ Tip</td>
            <td>{currencyFormatter.format(tip)}</td>
          </tr>
          <tr className="bg-danger text-white font-weight-bold text-center">
            <td>Order Total</td>
            <td>
              {currencyFormatter.format(
                (orderTotal + otherCost + drinkCost + deliveryFee) * taxRate +
                  orderTotal +
                  otherCost +
                  drinkCost +
                  deliveryFee +
                  Number(tip)
              )}
            </td>
          </tr>
        </tbody>
      </table>
      <div className="d-flex justify-content-center pb-3">
        <button className="btn btn-lg btn-primary" onClick={makeOrder}>Order Now!</button>
      </div>
    </div>
  );
};

export default GetOne;
