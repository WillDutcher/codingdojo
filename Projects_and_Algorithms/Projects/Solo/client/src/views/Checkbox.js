import React from "react";

const Checkbox = (props) => {
  const { id, name, onChange, checked } = props;

  return (
    <div>
      <input
        id={id}
        className=""
        name={name}
        type="checkbox"
        onChange={onChange}
        checked={checked}
      />
      <label id={id + "-label"} className="" htmlFor={name}>
        {name}
      </label>
    </div>
  );
};

export default Checkbox;
