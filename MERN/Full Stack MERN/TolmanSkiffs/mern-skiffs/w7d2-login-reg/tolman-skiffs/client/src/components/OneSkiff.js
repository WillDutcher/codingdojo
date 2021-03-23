import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const OneSkiff = (props) => {
  const { id } = props;
  const [ skiff, setSkiff ] = useState({});

  useEffect(() => {
  axios.get("http://localhost:8000/api/skiffs/" + id)
    .then((res) => {
      const mySkiff = res.data;
      console.log(mySkiff);
      setSkiff(mySkiff);
    })
  }, []);

     // {
    //     "buildComplete": true,
    //     "_id": "602ef40b75c9bf2ba45a8400",
    //     "ownerName": "Mark Neuhaus",
    //     "builderName": "Dave Wright",
    //     "modelName": "Wide Body",
    //     "startDate": "2014-08-23T00:00:00.000Z",
    //     "finishDate": "2016-01-23T00:00:00.000Z",
    //     "stockLength": 21,
    //     "customLength": 21,
    //     "pictureUrl": "https://fishyfish.com/davewright/img/Optimized-boat%20ride%209-9%20003.jpg",
    //     "description": "Dave Wright built an 18' Tolman Standard which he sold after a couple of years and then he built 21' Tolman Wide Body that he also sold. Both boats were of imaculate construction, and quite handsome.",
    //     "createdAt": "2021-02-18T23:11:07.738Z",
    //     "updatedAt": "2021-02-18T23:11:07.738Z",
    //     "__v": 0
    // }

  return (
    <div>
      <h2>{ skiff.ownerName }'s' Skiff</h2>
      <img src={skiff.pictureUrl} alt={`${skiff.ownerName}'s Boat`} />
      <p>
        Build Complete: { skiff.buildComplete ? <span>True</span> : <span>Not Yet!</span> }
      </p>
      <p>
        Builder Name: { skiff.builderName }
      </p>
      <p>
        Model Name: { skiff.modelName }
      </p>
      <p>
        Start Date: { (new Date(skiff.startDate)).toLocaleDateString("en-us") }
      </p>
      <p>
        Finish Date: { (new Date(skiff.finishDate)).toLocaleDateString("en-us") }
      </p>
      <p>
        Stock Length: { skiff.stockLength }
      </p>
      <p>
        Custom Length: { skiff.customLength }
      </p>
      <p>
        Description: { skiff.description }
      </p>
      <div>
        <button onClick={() => window.history.back()}>Back</button>
      </div>
    </div>
  )
}

export default OneSkiff;
