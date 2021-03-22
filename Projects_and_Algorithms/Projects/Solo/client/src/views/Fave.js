// import React, { useEffect, useState } from 'react';
import React from 'react';
// import axios from 'axios';
// import { Link, navigate } from '@reach/router';
// import OrderForm from '../components/OrderForm';
// import { navigate } from '@reach/router';

const Fave = (props) => {
    // const { id } = props;
    // const id = '6058be16354b29ae700068f7';
    // const [ size, setSize ] = useState();
    // const [ crust, setCrust ] = useState();
    // const [ cheese, setCheese ] = useState();
    // const [ sauce, setSauce ] = useState();
    // const [ pepperoni, setPepperoni ] = useState();
    // const [ sausage, setSausage ] = useState();
    // const [ ham, setHam ] = useState();
    // const [ chicken, setChicken ] = useState();
    // const [ bacon, setBacon ] = useState();
    // const [ impossibleMeat, setImpossibleMeat ] = useState();
    // const [ onion, setOnion ] = useState();
    // const [ mushroom, setMushroom ] = useState();
    // const [ greenPepper, setGreenPepper ] = useState();
    // const [ olive, setOlive ] = useState();
    // const [ jalapeno, setJalapeno ] = useState();
    // const [ pineapple, setPineapple ] = useState();
    // const [ breadsticks, setBreadsticks ] = useState();
    // const [ cheesesticks, setCheesesticks ] = useState();
    // const [ tiramasu, setTiramasu ] = useState();
    // const [ canoli, setCanoli ] = useState();
    // const [ drinks, setDrinks ] = useState();

    // const [ loaded, setLoaded ] = useState(false);
    // const [ errors, setErrors ] = useState();

    // useEffect(() => {
    //     console.log("UseEffect")
    //     axios.get(`http://localhost:8000/api/menu/fave/6057df4e9494781344bc4221`) // Edit with id later
    //         .then((res) => {
    //             const fave = res.data;
    //             console.log(fave);
    //             setSize(fave.size);
    //             setCrust(fave.crust);
    //             setCheese(fave.setCheese);
    //             setSauce(fave.setSauce);
    //             setPepperoni(fave.setPepperoni);
    //             setSausage(fave.setSausage);
    //             setHam(fave.setHam);
    //             setChicken(fave.setChicken);
    //             setBacon(fave.setBacon);
    //             setImpossibleMeat(fave.setImpossibleMeat);
    //             setOnion(fave.setOnion);
    //             setMushroom(fave.setMushroom);
    //             setGreenPepper(fave.setGreenPepper);
    //             setOlive(fave.setOlive);
    //             setJalapeno(fave.setJalapeno);
    //             setPineapple(fave.setPineapple);
    //             setBreadsticks(fave.setBreadsticks);
    //             setCheesesticks(fave.setCheesesticks);
    //             setTiramasu(fave.setTiramasu);
    //             setCanoli(fave.setCanoli);
    //             setDrinks(fave.setDrinks);
    //             setLoaded(true);
    //         })
    //         .catch((err) => {
    //             console.log(err);
    //         })
    // }, [id]);

    // const updateFave = (fave) => {
    //     axios.put(`http://localhost:8000/api/menu/${ id }`, {
    //         size: fave.size,
    //         crust: fave.crust,
    //         cheese: fave.cheese,
    //         sauce: fave.sauce,
    //         pepperoni: fave.pepperoni,
    //         sausage: fave.sausage,
    //         ham: fave.ham,
    //         chicken: fave.chicken,
    //         bacon: fave.bacon,
    //         impossibleMeat: fave.impossibleMeat,
    //         onion: fave.onion,
    //         mushroom: fave.mushroom,
    //         greenPepper: fave.greenPepper,
    //         olive: fave.olive,
    //         jalapeno: fave.jalapeno,
    //         pineapple: fave.pineapple,
    //         breadsticks: fave.breadsticks,
    //         cheesesticks: fave.cheesesticks,
    //         tiramasu: fave.tiramasu,
    //         canoli: fave.canoli,
    //         drinks: fave.drinks
    //     })
    //         .then((res) => {
    //             console.log(res.data);
    //             navigate('/');
    //         })
    //         .catch((err) => {
    //             console.log(err.response);
    //             setErrors(err.response.data.errors);
    //         })
    // }

    return (
        <div>
            <h1>Fave</h1>
            {/* {
                loaded && (
                    // <OrderForm initialSize={ size } initialCrust={ crust } initialCheese={ cheese } initialSauce={ sauce }
                    //     initialPepperoni={ pepperoni } initialSausage={ sausage } initialHam={ ham }
                    //     initialChicken={ chicken } initialBacon={ bacon } initialImpossibleMeat={ impossibleMeat }
                    //     initialOnion={ onion } initialMushroom={ mushroom } initialGreenPepper={ greenPepper }
                    //     initialOlive={ olive } initialJalapeno={ jalapeno } initialPineapple={ pineapple }
                    //     initialBreadsticks={ breadsticks } initialCheesesticks={ cheesesticks }
                    //     initialTiramasu={ tiramasu } initialCanoli={ canoli } initialDrinks={ drinks }
                    //     onSubmitProp={ updateFave } initialErrors={ errors }
                    // />
                )
            } */}
        </div>
    );
};

export default Fave;