import { navigate } from '@reach/router';
import React from 'react';

const Home = () => {

    return (
        <div className='d-flex justify-content-around'>
            <div className="card m-3">
                <img className="card-img-top" src="https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg" alt="Order pizza" />
                <div className="card-body d-flex flex-column">
                    <p>
                        Spinach cupidatat laboris, personal chicken and bacon large ut thin crust dolor anim duis. Voluptate deserunt dolore pork Chicago style. Culpa chicken buffalo sauce party parmesan fresh tomatoes, ut ranch officia anim mayo chicken wing. Lorem meat lovers reprehenderit, id meatball extra sauce culpa veniam bbq rib irure exercitation extra cheese. Onions veniam extra cheese in beef bacon & tomato laborum garlic parmesan tempor hand tossed ut nisi cupidatat esse reprehenderit. Anchovies hawaiian bacon et deserunt beef.
                        </p>
                    <div className="d-flex mt-auto">
                        <button className='btn btn-lg btn-primary my-3' onClick={ (e) => navigate('/menu/order') }>Order Now</button>
                    </div>
                </div>
            </div>
            <div className="card m-3">
                <img className="card-img-top" src="https://media.cntraveler.com/photos/5703e5da62735b7f3cd8b9b1/master/pass/pizza-cities-nyc-robertas-cr-courtesy.jpg" alt="Favorite pizza" />
                <div className="card-body d-flex flex-column">
                    <p>
                        Sausage laboris white garlic philly chicken large pepperoni meatball enim, stuffed est cillum buffalo sauce voluptate laborum. Meatball meat lovers onions eiusmod ham sint hand tossed garlic. Broccoli banana peppers pizza pan tempor veniam philly chicken chicken and bacon personal aliqua et beef. Cupidatat ut garlic pesto consequat enim exercitation pariatur incididunt buffalo sauce deserunt meatball cillum do aute.
                    </p>
                    <div className="d-flex mt-auto">
                        <button className='btn btn-lg btn-primary my-3' onClick={ (e) => navigate('/menu/fave') }>Order Fave</button>
                    </div>
                </div>
            </div>
            <div className="card m-3">
                <img className="card-img-top" src="https://previews.123rf.com/images/wowomnom/wowomnom1502/wowomnom150200170/36482090-vector-illustration-of-many-questions-and-exclamation-marks-around-pizza-on-yellow-pattern-backgroun.jpg" alt="Random pizza" />
                <div className="card-body d-flex flex-column">
                    <p>
                        Pizza mozzarella do bbq. Sausage elit fresh tomatoes pizza white pizza culpa laboris string cheese labore in duis. Ham steak extra cheese, pepperoni non nulla voluptate ea. Ullamco sed melted cheese bianca. Mollit ex pariatur, meatball string cheese meatball bbq rib laborum in minim chicken and bacon garlic parmesan banana peppers sed.
                    </p>
                    <div className="d-flex mt-auto">
                        <button className='btn btn-lg btn-primary my-3' onClick={ (e) => navigate('/menu/random') }>Pizza Roulette</button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Home;