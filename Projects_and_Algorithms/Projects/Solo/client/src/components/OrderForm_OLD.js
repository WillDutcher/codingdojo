import React, { useState } from 'react';
import { navigate } from '@reach/router';
import axios from 'axios';

const OrderForm = () => {
    const [ order, setOrder ] = useState(true);

    const [ pizza, setPizza ] =useState(true);
    const [ size, setSize ] = useState('Medium');
    const [ crust, setCrust ] = useState('Normal');
    const [ cheese, setCheese ] = useState('Normal');
    const [ sauce, setSaurce ] = useState('Normal');
    
    const [ meat, setMeat ] = useState(false);
    const [ pepperoni, setPepperoni ] = useState(false);
    const [ sausage, setSausage ] = useState(false);
    const [ ham, setHam ] = useState(false);
    const [ chicken, setchicken ] = useState(false);
    const [ bacon, setbacon ] = useState(false);
    const [ impossibleMeat, setimpossibleMeat ] = useState(false);
    
    const [ veggies, setVeggies ] = useState(false);
    const [ onion, setOnion ] = useState(false);
    const [ mushroom, setMushroom ] = useState(false);
    const [ greenPepper, setGreenPepper ] = useState(false);
    const [ olive, setOlive ] = useState(false);
    const [ jalapeno, setJalapeno ] = useState(false);
    const [ pineapple, setPineapple ] = useState(false);

    const [ sides, setSides ] = useState(false);
    const [ breadsticks, setBreadsticks ] = useState(false);
    const [ cheesesticks, setCheesesticks ] = useState(false);

    const [ desserts, setDesserts ] = useState(false);
    const [ tiramasu, setTiramasu ] = useState(false);
    const [ canoli, setCanoli ] = useState(false);

    const [ drinks, setDrinks ] = useState(false);
    const [ drink, setDrink ] = useState(false);

    onSubmitHandler = (e) => {
        e.preventDefault();
        axios.post('http://localhost:8000/api/orders', {
            order,
            pizza,
            size,
            crust,
            cheese,
            sauce,
            meat,
            pepperoni,
            sausage,
            ham,
            chicken,
            bacon,
            impossibleMeat,
            veggies,
            onion,
            mushroom,
            greenPepper,
            olive,
            jalapeno,
            pineapple,
            sides,
            breadsticks,
            cheesesticks,
            desserts,
            tiramasu,
            canoli,
            drinks,
            drink
        })
            .then(res => console.log(res))
            .then(navigate('/'))
            .then(console.log('Order submitted!'))
            .catch(err => console.log(err))
    }
}