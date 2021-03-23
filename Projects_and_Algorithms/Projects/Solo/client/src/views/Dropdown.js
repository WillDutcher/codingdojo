import React from "react";

const Dropdown = (props) => {
  const { id, name, onChange, value, options } = props;

  return (
    <div id={id}>
      <h5 className="text-center">{name}</h5>
      <label id="drinks-label" className="" htmlFor={name}>
        {name}
      </label>
      <select
        id={id}
        className=""
        name={name}
        onChange={onChange}
        value={value}
      >
        {options.map(option)}
      </select>
    </div>
  );
};

const option = (val) => {
  return <option value={val}>{val}</option>;
};

export default Dropdown;
