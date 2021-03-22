import React, { useEffect, useState } from 'react';
import axios from 'axios';
// import { Link, navigate } from '@reach/router';
// import OrderForm from '../components/OrderForm';

const UpdateOrder = (props) => {
    const { id } = props;
    // const [ order, setOrder ] = useState(true);

    // const [ pizza, setPizza ] =useState(true);
    const [ size, setSize ] = useState();
    const [ crust, setCrust ] = useState();
    const [ cheese, setCheese ] = useState();
    const [ sauce, setSauce ] = useState();
    // const [ meat, setMeat ] = useState(false);
    const [ pepperoni, setPepperoni ] = useState();
    const [ sausage, setSausage ] = useState();
    const [ ham, setHam ] = useState();
    const [ chicken, setChicken ] = useState();
    const [ bacon, setBacon ] = useState();
    const [ impossibleMeat, setImpossibleMeat ] = useState();
    // const [ veggies, setVeggies ] = useState(false);
    const [ onion, setOnion ] = useState();
    const [ mushroom, setMushroom ] = useState();
    const [ greenPepper, setGreenPepper ] = useState();
    const [ olive, setOlive ] = useState();
    const [ jalapeno, setJalapeno ] = useState();
    const [ pineapple, setPineapple ] = useState();
    // const [ sides, setSides ] = useState(false);
    const [ breadsticks, setBreadsticks ] = useState();
    const [ cheesesticks, setCheesesticks ] = useState();
    // const [ desserts, setDesserts ] = useState(false);
    const [ tiramasu, setTiramasu ] = useState();
    const [ canoli, setCanoli ] = useState();
    // const [ drinks, setDrinks ] = useState(false);
    const [ drinks, setDrinks ] = useState();
    const [ loaded, setLoaded ] = useState(false);
    const [ errors, setErrors ] = useState();

    useEffect(()=> {
        axios.get(`http://localhost:8000/api/menu/${ id }`)
            .then((res) => {
                const currentOrder = res.data;
                console.log(currentOrder);
                setSize(currentOrder.size);
                setCrust(currentOrder.crust);
                setCheese(currentOrder.cheese);
                setSauce(currentOrder.sauce);
                setPepperoni(currentOrder.pepperoni);
                setSausage(currentOrder.sausage);
                setHam(currentOrder.ham);
                setChicken(currentOrder.chicken);
                setBacon(currentOrder.bacon);
                setImpossibleMeat(currentOrder.impossibleMeat);
                setOnion(currentOrder.onion);
                setMushroom(currentOrder.mushroom);
                setGreenPepper(currentOrder.greenPepper);
                setOlive(currentOrder.olive);
                setJalapeno(currentOrder.jalapeno);
                setPineapple(currentOrder.pineapple);
                setBreadsticks(currentOrder.breadsticks);
                setCheesesticks(currentOrder.cheesesticks);
                setTiramasu(currentOrder.tiramasu);
                setCanoli(currentOrder.canoli);
                setDrink(currentOrder.drinks);
                setLoaded(true);
            })
            .catch((err) => {
                console.log(err);
            })
    }, [id]);

    const editOrder = (currentOrder) => {
        // axios.put
    }
}