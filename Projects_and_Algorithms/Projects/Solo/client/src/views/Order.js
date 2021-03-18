import React, { useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';
import OrderForm from '../components/OrderForm';

const Order = (props) => {
    const [ errors, setErrors ] = useState();

    const addToOrder = (currentOrder) => {
        console.log("Button clicked")
        
        const orderObj = {
            order: {
                pizza: {
                    size: currentOrder.size,
                    crust: currentOrder.crust,
                    cheese: currentOrder.cheese,
                    sauce: currentOrder.sauce,
                    meat: {},
                    veggies: {}
                },
                sides: {},
                desserts: {},
                drinks: currentOrder.drinks
            }
        }
        
        console.log(orderObj);
        axios.post(`http://localhost:8000/api/orders`, orderObj)
            .then((res) => {
                console.log("In then")
                console.log(res);
                navigate('/'); // This is wrong, change it
            })
            .catch((err) => {
                console.log(err.response);
                setErrors(err.response.data.errors);
        })
    };

    return (
        <div>
            <div className="">
                <h1 className="">Order</h1>
            </div>
            <OrderForm
                initialSize="medium" initialCrust="normal" initialCheese="normal" initialSauce="normal"
                initialPepperoni={false} initialSausage={false} initialHam={false}
                initialChicken={false} initialBacon={false} initialImpossibleMeat={false}
                initialOnion={false} initialMushroom={false} initialGreenPepper={false}
                initialOlive={false} initialJalapeno={false} initialPineapple={false}
                initialBreadsticks={false} initialCheesesticks={false}
                initialTiramasu={false} initialCanoli={false} initialDrink=""
                initialErrors={ errors } onSubmitProp={ addToOrder }
            />
        </div>
    );
};

export default Order;