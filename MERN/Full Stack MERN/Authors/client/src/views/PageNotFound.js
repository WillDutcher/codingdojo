import React from 'react';
import { Link } from '@reach/router';

const PageNotFound = (props) => {

    return (
        <div>
            <p>We're sorry, but we could not find the author you are looking for. Would you like to add this author to our database?</p>
            <Link to={'/authors/new'}>
                Create an Author
            </Link>
            <Link to={'/authors'}><br/>
                Author List
            </Link>
        </div>
    );
};

export default PageNotFound;