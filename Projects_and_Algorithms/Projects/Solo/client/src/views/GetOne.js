import React, { useEffect, useState } from 'react';
import axios from 'axios';
// import { Link, navigate } from '@reach/router';

const GetOne = (props) => {
    const { id } = props;
    const [ oneOrder, setOneOrder ] = useState({});

    useEffect(() => {
        axios.get(`http://localhost:8000/api/menu/${ id }`)
            .then((res) => {
                const userOrder = res.data;
                console.log(userOrder);
                setOneOrder(userOrder);
            })
    }, [id])

    return (
        <div>
            <h2>Your Order</h2>
            <h3>Pizza</h3>
            <p>Size: { oneOrder.pizza.size }</p>
            <p>Crust: { oneOrder.pizza.crust }</p>
            <p>Cheese: { oneOrder.pizza.cheese }</p>
            <p>Sauce: { oneOrder.pizza.sauce }</p>
            <h4>Toppings:</h4>
            <ul>
                { oneOrder.pizza.toppings.protein.pepperoni ? <li>pepperoni</li> : null }
                { oneOrder.pizza.toppings.protein.sausage ? <li>sausage</li> : null }
                { oneOrder.pizza.toppings.protein.ham ? <li>ham</li> : null }
                { oneOrder.pizza.toppings.protein.chicken ? <li>chicken</li> : null }
                { oneOrder.pizza.toppings.protein.bacon ? <li>any</li> : null }
                { oneOrder.pizza.toppings.protein.impossibleMeat ? <li>impossible meat</li> : null }
                { oneOrder.pizza.toppings.protein.onion ? <li>onion</li> : null }
                { oneOrder.pizza.toppings.protein.mushroom ? <li>mushroom</li> : null }
                { oneOrder.pizza.toppings.protein.greenPepper ? <li>green pepper</li> : null }
                { oneOrder.pizza.toppings.protein.olive ? <li>olive</li> : null }
                { oneOrder.pizza.toppings.protein.jalapeno ? <li>jalapeno</li> : null }
                { oneOrder.pizza.toppings.protein.pineapple ? <li>pineapple</li> : null }
            </ul>
            <h4>Sides</h4>
            <ul>
                { oneOrder.sides.breadsticks ? <li>breadsticks</li> : null }
                { oneOrder.sides.cheesesticks ? <li>cheesesticks</li> : null }
            </ul>                
            <h4>Desserts</h4>
            <ul>
                { oneOrder.desserts.tiramasu ? <li>tiramasu</li> : null }
                { oneOrder.desserts.canoli ? <li>canoli</li> : null }
            </ul>
            <h4>Drinks</h4>
            <ul>
                { oneOrder.drinks ? <li>{oneOrder.drinks}</li> : null }
            </ul>
        </div>
    );
};

export default GetOne;