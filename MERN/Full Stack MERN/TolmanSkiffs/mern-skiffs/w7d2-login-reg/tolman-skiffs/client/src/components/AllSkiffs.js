import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const AllSkiffs = (props) => {
  const [ allSkiffs, setAllSkiffs ] = useState([]);

  useEffect(() => {
    axios
      .get("http://localhost:8000/api/skiffs")
      .then((response) => {
        console.log(response.data);
        console.log("hello kevin");
        setAllSkiffs(response.data);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  const deleteSkiff = (skiffId) => {
    axios.delete("http://localhost:8000/api/skiffs/" + skiffId,
      {
        // this will force the sending of the credentials / cookies so they can be updated
        //    XMLHttpRequest from a different domain cannot set cookie values for their own domain 
        //    unless withCredentials is set to true before making the request
        withCredentials: true
      })
      .then((res) => {
        const deletedSkiff = res.data;
        console.log(deletedSkiff);
        const filteredSkiffsArray = allSkiffs.filter((skiff) => skiff._id !== skiffId);
        setAllSkiffs(filteredSkiffsArray);
      })
      .catch((err) => {
        console.log(err);
      });
  }

  return (
    <div>
      <h2>All Skiffs</h2>
      <button onClick={() => navigate('/skiff/new')}>Create New Skiff</button>
      {
        allSkiffs.map((skiff, index) => (
          <div key={index}>
            <hr />
            <img 
              src={ skiff.pictureUrl }
              alt={ skiff.description }
            />
            <h4>{`${skiff.ownerName}'s ${skiff.modelName} Skiff`}</h4>
            <button
              onClick={() => navigate(`/skiff/${skiff._id}`)}
            >View Skiff Details</button>
            <button
              onClick={() => navigate(`/skiff/${skiff._id}/edit`)}
            >Edit Skiff</button>
            <button onClick={() => deleteSkiff(skiff._id)}>Titanic</button>
          </div>
        ))
      }
    </div>
  )
}

export default AllSkiffs;
