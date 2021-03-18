import React, { useState } from 'react';

const OrderForm = (props) => {
    const { initialSize,
            initialCrust,
            initialCheese,
            initialSauce,
            initialPepperoni, initialSausage, initialHam, initialChicken, initialBacon, initialImpossibleMeat,
            initialOnion, initialMushroom, initialGreenPepper, initialOlive, initialJalapeno, initialPineapple,
            initialBreadsticks, initialCheesesticks,
            initialTiramasu, initialCanoli,
            initialDrink,
            initialErrors,
            onSubmitProp } =  props;

    // const [ order, setOrder ] = useState(true);

    // const [ pizza, setPizza ] =useState(true);
    const [ size, setSize ] = useState(initialSize);
    const [ crust, setCrust ] = useState(initialCrust);
    const [ cheese, setCheese ] = useState(initialCheese);
    const [ sauce, setSauce ] = useState(initialSauce);
    // const [ meat, setMeat ] = useState(false);
    const [ pepperoni, setPepperoni ] = useState(initialPepperoni);
    const [ sausage, setSausage ] = useState(initialSausage);
    const [ ham, setHam ] = useState(initialHam);
    const [ chicken, setChicken ] = useState(initialChicken);
    const [ bacon, setBacon ] = useState(initialBacon);
    const [ impossibleMeat, setImpossibleMeat ] = useState(initialImpossibleMeat);
    // const [ veggies, setVeggies ] = useState(false);
    const [ onion, setOnion ] = useState(initialOnion);
    const [ mushroom, setMushroom ] = useState(initialMushroom);
    const [ greenPepper, setGreenPepper ] = useState(initialGreenPepper);
    const [ olive, setOlive ] = useState(initialOlive);
    const [ jalapeno, setJalapeno ] = useState(initialJalapeno);
    const [ pineapple, setPineapple ] = useState(initialPineapple);
    // const [ sides, setSides ] = useState(false);
    const [ breadsticks, setBreadsticks ] = useState(initialBreadsticks);
    const [ cheesesticks, setCheesesticks ] = useState(initialCheesesticks);
    // const [ desserts, setDesserts ] = useState(false);
    const [ tiramasu, setTiramasu ] = useState(initialTiramasu);
    const [ canoli, setCanoli ] = useState(initialCanoli);
    // const [ drinks, setDrinks ] = useState(false);
    const [ drink, setDrink ] = useState(initialDrink);

    const onSubmitHandler = (e) => {
        e.preventDefault();
        onSubmitProp({
            size,
            crust,
            cheese,
            sauce,
            pepperoni, sausage, ham, chicken, bacon, impossibleMeat,
            onion, mushroom, greenPepper, olive, jalapeno, pineapple,
            breadsticks, cheesesticks,
            tiramasu, canoli,
            drink
        });
    };

    return (
        <div className="">
            <form className="my-3 pb-4" onSubmit={ onSubmitHandler }>
                <div id="non-pizza-items" className="d-flex justify-content-between">
                    <div id="sides">
                        <div>
                            <h5 className="text-center">Sides</h5>
                            <input 
                                id="breadsticks"
                                className=""
                                name="breadsticks"
                                type="checkbox"
                                onChange={ (e) => setBreadsticks( !breadsticks) }
                                checked={ breadsticks }
                            />
                            <label id="breadsticks-label" className="" htmlFor="breadsticks">Breadsticks</label>
                        </div>
                        <div>
                            <input 
                                id="cheesesticks"
                                className=""
                                name="cheesesticks"
                                type="checkbox"
                                onChange={ (e) => setCheesesticks( !cheesesticks) }
                                checked={ cheesesticks }
                            />
                            <label id="cheesesticks-label" className="" htmlFor="cheesesticks">Cheesesticks</label>
                        </div>
                    </div>
                    <div id="desserts">
                        <div>
                            <h5 className="text-center">Desserts</h5>
                            <input 
                                id="tiramasu"
                                className=""
                                name="tiramasu"
                                type="checkbox"
                                onChange={ (e) => setTiramasu( !tiramasu) }
                                checked={ tiramasu }
                            />
                            <label id="tiramasu-label" className="" htmlFor="tiramasu">Tiramasu</label>
                        </div>
                        <div>
                            <input 
                                id="canoli"
                                className=""
                                name="canoli"
                                type="checkbox"
                                onChange={ (e) => setCanoli( !canoli) }
                                checked={ canoli }
                            />
                            <label id="canoli-label" className="" htmlFor="canoli">Canoli</label>
                        </div>
                    </div>
                    <div id="drink">
                        <h5 className="text-center">Drinks</h5>
                        <label id="drink-label" className="" htmlFor="drink">Drink</label>
                        <select
                            id="drink"
                            className=""
                            name="drink"
                            onChange={ (e) => setDrink(e.target.value) }
                            value={ drink }
                        >
                            <option value="Coke">Coke</option>
                            <option value="Diet Coke">Diet Coke</option>
                            <option value="Dr. Pepper">Dr. Pepper</option>
                            <option value="Diet Dr. Pepper">Diet Dr. Pepper</option>
                            <option value="Sprite">Sprite</option>
                            <option value="Fanta Orange">Fanta Orange</option>
                            <option value="Barq\'s Root Beer">Barq's Root Beer</option>
                        </select>
                    </div>
                </div>
                <hr className="fancy" />
                <div id="pizza-details" className="d-flex justify-content-around">
                    <div id="pizza-basics" className="d-flex flex-column justify-content-between">
                        <h5 className="text-center">Pizza Basics</h5>
                        <div id="size-div">
                            { initialErrors && (
                                <>
                                    { initialErrors.size ?
                                        <span className="text-danger">{ initialErrors.size.message }</span>
                                        : null
                                    }
                                </>
                            )}
                            <label id="size-label" className="" htmlFor="">Size</label>
                            <select
                                id="size"
                                className=""
                                name="size"
                                onChange={ (e) => setSize(e.target.value) }
                                value={ size }
                            >
                                <option value="personal">Personal</option>
                                <option value="small">Small</option>
                                <option value="medium">Medium</option>
                                <option value="large">Large</option>
                                <option value="extraLarge">Extra Large</option>
                            </select>
                        </div>
                        <div id="crust-div">
                            { initialErrors && (
                                <>
                                    { initialErrors.crust ?
                                        <span className="text-danger">{ initialErrors.crust.message }</span>
                                        : null
                                    }
                                </>
                            )}
                            <label id="crust-label" className="" htmlFor="crust">Crust</label>
                            <select
                                id="crust"
                                className=""
                                name="crust"
                                onChange={ (e) => setCrust(e.target.value) }
                                value={ crust }
                            >
                                <option value="normal">Normal</option>
                                <option value="thin">Thin</option>
                                <option value="pan">Pan</option>
                                <option value="stuffed">Stuffed</option>
                            </select>
                        </div>
                        <div id="sauce-div">
                            { initialErrors && (
                                <>
                                    { initialErrors.sauce ?
                                        <span className="text-danger">{ initialErrors.sauce.message }</span>
                                        : null
                                    }
                                </>
                            )}
                            <label id="sauce-label" className="" htmlFor="sauce">Sauce</label>
                            <select
                                id="sauce"
                                className=""
                                name="sauce"
                                onChange={ (e) => setSauce(e.target.value) }
                                value={ sauce }
                            >
                                <option value="light">Light</option>
                                <option value="normal">Normal</option>
                                <option value="extra">Extra</option>
                                <option value="double">Double</option>
                            </select>
                        </div>
                        <div id="cheese-div">
                            { initialErrors && (
                                <>
                                    { initialErrors.cheese ?
                                        <span className="text-danger">{ initialErrors.cheese.message }</span>
                                        : null
                                    }
                                </>
                            )}
                            <label id="cheese-label" className="" htmlFor="cheese">Cheese</label>
                            <select
                                id="cheese"
                                className=""
                                name="cheese"
                                onChange={ (e) => setCheese(e.target.value) }
                                value={ cheese }
                            >
                                <option value="light">Light</option>
                                <option value="normal">Normal</option>
                                <option value="extra">Extra</option>
                                <option value="double">Double</option>
                            </select>
                        </div>
                    </div>
                    <div id="protein" className="">
                        <h5 className="text-center">Protein</h5>
                        <div>
                            <div>
                                <input 
                                    id="pepperoni"
                                    className=""
                                    name="pepperoni"
                                    type="checkbox"
                                    onChange={ (e) => setPepperoni( !pepperoni) }
                                    checked={ pepperoni }
                                />
                                <label id="pepperoni-label" className="" htmlFor="pepperoni">Pepperoni</label>
                            </div>
                            <div>
                                <input 
                                    id="sausage"
                                    className=""
                                    name="sausage"
                                    type="checkbox"
                                    onChange={ (e) => setSausage( !sausage) }
                                    checked={ sausage }
                                />
                                <label id="sausage-label" className="" htmlFor="sausage">Sausage</label>
                            </div>
                            <div>
                                <input 
                                    id="ham"
                                    className=""
                                    name="ham"
                                    type="checkbox"
                                    onChange={ (e) => setHam( !ham) }
                                    checked={ ham }
                                />
                                <label id="ham-label" className="" htmlFor="ham">Ham</label>
                            </div>
                            <div>
                                <input 
                                    id="chicken"
                                    className=""
                                    name="chicken"
                                    type="checkbox"
                                    onChange={ (e) => setChicken( !chicken) }
                                    checked={ chicken }
                                />
                                <label id="chicken-label" className="" htmlFor="chicken">Chicken</label>
                            </div>
                            <div>
                                <input 
                                    id="bacon"
                                    className=""
                                    name="bacon"
                                    type="checkbox"
                                    onChange={ (e) => setBacon( !bacon) }
                                    checked={ bacon }
                                />
                                <label id="bacon-label" className="" htmlFor="bacon">Bacon</label>
                            </div>
                            <div>
                                <input 
                                    id="impossibleMeat"
                                    className=""
                                    name="impossibleMeat"
                                    type="checkbox"
                                    onChange={ (e) => setImpossibleMeat( !impossibleMeat) }
                                    checked={ impossibleMeat }
                                />
                                <label id="impossibleMeat-label" className="" htmlFor="impossibleMeat">Impossible Meat</label>
                            </div>
                        </div>
                    </div>
                    <div id="veggies">
                        <h5 className="text-center">Veggies</h5>
                        <div>
                            <div>
                                <input 
                                    id="onion"
                                    className=""
                                    name="onion"
                                    type="checkbox"
                                    onChange={ (e) => setOnion( !onion) }
                                    checked={ onion }
                                />
                                <label id="onion-label" className="" htmlFor="onion">Onion</label>
                            </div>
                            <div>
                                <input 
                                    id="mushroom"
                                    className=""
                                    name="mushroom"
                                    type="checkbox"
                                    onChange={ (e) => setMushroom( !mushroom) }
                                    checked={ mushroom }
                                />
                                <label id="mushroom-label" className="" htmlFor="mushroom">Mushroom</label>
                            </div>
                            <div>
                                <input 
                                    id="greenPepper"
                                    className=""
                                    name="greenPepper"
                                    type="checkbox"
                                    onChange={ (e) => setGreenPepper( !greenPepper) }
                                    checked={ greenPepper }
                                />
                                <label id="greenPepper-label" className="" htmlFor="greenPepper">Green Pepper</label>
                            </div>
                            <div>
                                <input 
                                    id="olive"
                                    className=""
                                    name="olive"
                                    type="checkbox"
                                    onChange={ (e) => setOlive( !olive) }
                                    checked={ olive }
                                />
                                <label id="olive-label" className="" htmlFor="olive">Olive</label>
                            </div>
                            <div>
                                <input 
                                    id="jalapeno"
                                    className=""
                                    name="jalapeno"
                                    type="checkbox"
                                    onChange={ (e) => setJalapeno( !jalapeno) }
                                    checked={ jalapeno }
                                />
                                <label id="jalapeno-label" className="" htmlFor="jalapeno">Jalapeno</label>
                            </div>
                            <div>
                                <input 
                                    id="pineapple"
                                    className=""
                                    name="pineapple"
                                    type="checkbox"
                                    onChange={ (e) => setPineapple( !pineapple) }
                                    checked={ pineapple }
                                />
                                <label id="pineapple-label" className="" htmlFor="pineapple">Pineapple</label>
                            </div>
                        </div>
                    </div>
                </div>
                <button id="addToOrder"className="btn btn-lg btn-primary">Add to Order</button>
            </form>
        </div>
    );
};

export default OrderForm;