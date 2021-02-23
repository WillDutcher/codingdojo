import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link  } from '@reach/router';
import DeleteButton from '../components/DeleteButton';
import PageNotFound from './PageNotFound';

const AuthorList = (props) => {
    const [ authors, setAuthors ] = useState([]);
    // const [ authors, setAuthors ] = useState(null);

    useEffect(() => {
        console.log(authors)
        axios.get(`http://localhost:8000/api/authors`)
            .then((res) => {
                console.log(res.data);
                setAuthors(res.data);
            })
            .catch((err) => {
                console.log("Error received", err);                         // Do more with validation later; Note EditButton may take some work
            })
    // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    if (authors.length === 0 || authors === null) {
        return (<PageNotFound />)
    };

    const removeFromDom = (authorId) => {
        const favoriteAuthors =  authors.filter(author => author._id !== authorId)
        setAuthors(favoriteAuthors);
    };

    return (
        <div>
            <Link className="d-block text-center"  to="/authors/new">Add an Author</Link>
            <table className="table table-striped table-bordered table-hover mt-3">
                <thead>
                    <tr>
                        <th className="table-dark">Author</th>
                        <th className="table-dark">Actions Available</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        authors.map((author, index) => {
                            return (
                                <tr key={ index }>
                                    <td className="author-title">{ `${author.name }` }</td>
                                    <td className="d-flex justify-content-around">
                                        <Link to={`/authors/${ author._id }/edit`} className="d-inline edit-btn btn btn-sm" >
                                            Edit
                                        </Link>
                                        <DeleteButton authorId={ author._id } successCallback={ () => removeFromDom(author._id) } />
                                    </td>
                                </tr>
                            )
                        })
                    }
                    
                </tbody>
            </table>
        </div>
    );
};

export default AuthorList;