import React, { useEffect, useState } from "react";
import axios from "axios";
import Cookies from "js-cookie";
import Checkbox from "../views/Checkbox";
import Dropdown from "../views/Dropdown";

const toCheckboxes = (list, state, onChangeHandler) =>
  getList(list, (x) => (
    <Checkbox
      key={x.name}
      id={x.name}
      name={x.name}
      checked={getChecked(state[x.name])}
      onChange={onChangeHandler}
    />
  ));

const getValue = (val) => {
  if (val === undefined) {
    return "";
  }
  return val;
};

const getChecked = (val) => {
  if (val === undefined || val === "" || val === "off" || !val) {
    return false;
  }
  return true;
};

const getList = (val, mappingFunction) => {
  if (val === undefined) {
    return [];
  }
  return val.map(mappingFunction);
};

const OrderForm = (props) => {
  const [state, setState] = useState({});

  useEffect(() => {
    axios
      .get(`http://localhost:8000/api/menu`)
      .then((res) => {
        setState(res.data);
        console.log(res);
      })
      .catch((err) => {
        console.log(err.response);
        // setErrors(err.response.data.errors);
      });
  }, []);

  const onChangeHandler = (e) => {
    console.log(e);
    const newState = {
      ...state,
    };
    newState[e.target.name] =
      e.target.type === "checkbox" ? e.target.checked : e.target.value;
    setState(newState);
    console.log(newState);
  };

  const onSubmitHandler = (e) => {
    e.preventDefault();
    axios.post('http://localhost:8000/api/menu')
  };

  return (
    <div className="">
      <form className="my-3 pb-4" onSubmit={onSubmitHandler}>
        <Dropdown
          id="size"
          name="size"
          onChange={onChangeHandler}
          value={getValue(state.size)}
          options={getList(state.sizes, (x) => x.name)}
        />
        <Dropdown
          id="crust"
          name="crust"
          onChange={onChangeHandler}
          value={getValue(state.crust)}
          options={getList(state.crusts, (x) => x.name)}
        />
        <Dropdown
          id="cheese"
          name="cheese"
          onChange={onChangeHandler}
          value={getValue(state.cheese)}
          options={getList(state.cheeses, (x) => x.name)}
        />
        <Dropdown
          id="sauce"
          name="sauce"
          onChange={onChangeHandler}
          value={getValue(state.sauce)}
          options={getList(state.sauces, (x) => x.name)}
        />
        <Dropdown
          id="drink"
          name="drink"
          onChange={onChangeHandler}
          value={getValue(state.drink)}
          options={getList(state.drinks, (x) => x.name)}
        />
        {toCheckboxes(state.sides, state, onChangeHandler)}
        {toCheckboxes(state.desserts, state, onChangeHandler)}
        {toCheckboxes(state.toppings, state, onChangeHandler)}
        {/* <Checkbox
          id="tiramasu"
          name="tiramasu"
          checked={getValue(state.tiramasu)}
          onChange={onChangeHandler}
        />
        <Checkbox
          id="canoli"
          name="canoli"
          checked={getValue(state.canoli)}
          onChange={onChangeHandler}
        />
        <Checkbox
          id="pepperoni"
          name="pepperoni"
          checked={getValue((state.name = "pepperoni"))}
          onChange={onChangeHandler}
        />
        <Checkbox
          id="sausage"
          name="sausage"
          checked={getValue((state.name = "sausage"))}
          onChange={onChangeHandler}
        />
        <Checkbox id="ham" name="ham" checked="" onChange={onChangeHandler} />
        <Checkbox
          id="chicken"
          name="chicken"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="bacon"
          name="bacon"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="impossibleMeat"
          name="impossibleMeat"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="onion"
          name="onion"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="mushroom"
          name="mushroom"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="greenPepper"
          name="greenPepper"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="olive"
          name="olive"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="jalapeno"
          name="jalapeno"
          checked=""
          onChange={onChangeHandler}
        />
        <Checkbox
          id="pineapple"
          name="pineapple"
          checked=""
          onChange={onChangeHandler}
        /> */}
      </form>
    </div>
  );
};

export default OrderForm;
