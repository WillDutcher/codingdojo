import React, { useState } from 'react';
import axios from 'axios';
import { navigate } from '@reach/router';
import OrderForm from '../components/OrderForm';

const Order = (props) => {
    const [ errors, setErrors ] = useState();

    const addToOrder = (currentOrder) => {
        console.log("Button clicked")
        console.log("currentOrder");
        console.log(currentOrder);
        console.log("End of current order");
        
        const orderObj = {
            pizza: {
                size: currentOrder.size,
                crust: currentOrder.crust,
                cheese: currentOrder.cheese,
                sauce: currentOrder.sauce,
                toppings: {
                    protein: {
                        pepperoni: currentOrder.pepperoni,
                        sausage: currentOrder.sausage,
                        ham: currentOrder.ham,
                        chicken: currentOrder.chicken,
                        bacon: currentOrder.bacon,
                        impossibleMeat: currentOrder.impossibleMeat
                    },
                    veggies: {
                        onion: currentOrder.onion,
                        mushroom: currentOrder.mushroom,
                        greenPepper: currentOrder.greenPepper,
                        olive: currentOrder.olive,
                        jalapeno: currentOrder.jalapeno,
                        pineapple: currentOrder.pineapple
                    }
                },
            },
            sides: {
                breadsticks: currentOrder.breadsticks,
                cheesesticks: currentOrder.cheesesticks
            },
            desserts: {
                tiramasu: currentOrder.tiramasu,
                canoli: currentOrder.canoli,
            },
            drinks: currentOrder.drinks
        }
        
        console.log('orderObj:');
        console.log(orderObj);
        axios.post(`http://localhost:8000/api/menu`, orderObj,
        { withCredentials: true })
            .then((res) => {
                console.log("Order successful!");
                console.log("res:")
                console.log(res);
                navigate('/menu/order'); // This is wrong, change it
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
                initialSize="" initialCrust="" initialCheese="" initialSauce=""
                initialPepperoni={false} initialSausage={false} initialHam={false}
                initialChicken={false} initialBacon={false} initialImpossibleMeat={false}
                initialOnion={false} initialMushroom={false} initialGreenPepper={false}
                initialOlive={false} initialJalapeno={false} initialPineapple={false}
                initialBreadsticks={false} initialCheesesticks={false}
                initialTiramasu={false} initialCanoli={false} initialDrinks="-"
                initialErrors={ errors } onSubmitProp={ addToOrder }
            />
        </div>
    );
};

export default Order;