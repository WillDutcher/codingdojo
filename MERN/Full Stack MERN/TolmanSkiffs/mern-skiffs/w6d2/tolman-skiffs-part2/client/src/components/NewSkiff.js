import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, navigate } from '@reach/router';

const NewSkiff = (props) => {
  const [ buildComplete, setBuildComplete ] = useState(false);
  const [ ownerName, setOwnerName ] = useState("");
  const [ builderName, setBuilderName ] = useState("");
  const [ modelName, setModelName ] = useState("Standard");
  const [ startDate, setStartDate ] = useState("");
  const [ finishDate, setFinishDate ] = useState("");
  const [ stockLength, setStockLength ] = useState("");
  const [ customLength, setCustomLength ] = useState("");
  const [ pictureUrl, setPictureUrl ] = useState("");
  const [ description, setDescription ] = useState("");
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
  
  const submitForm = (e) => {
    e.preventDefault();
    // do something with axios
    axios.post("http://localhost:8000/api/skiffs", {
      buildComplete: buildComplete,
      ownerName: ownerName,
      builderName: builderName,
      modelName: modelName,
      startDate: startDate,
      finishDate: finishDate,
      stockLength: stockLength,
      customLength: customLength,
      pictureUrl: pictureUrl,
      description: description,
    })
      .then((response) => {
        console.log(response.data);
        navigate(`/skiff/${response.data._id}`);
      })
      .catch((err) => {
        console.log(err);
      });
  }

  return (
    <div>
      <h2>New Skiffs</h2>
      <form onSubmit={submitForm}>
        <div>
          <input 
            type="checkbox"
            name="buildComplete"
            checked={buildComplete}
            onChange={(e) => setBuildComplete( !buildComplete )}
          />
          <label>Build Complete</label>
        </div>
        <div>
          <label>Owner Name</label>
          <input 
            type="text"
            name="ownerName"
            value={ownerName}
            onChange={(e) => setOwnerName(e.target.value)}
          />
        </div>
        <div>
          <label>Builders Name</label>
          <input 
            type="text"
            name="builderName"
            value={builderName}
            onChange={(e) => setBuilderName(e.target.value)}
          />
        </div>
        <div>
          <label>Model Name</label>
          <select
            name="modelName"
            value={modelName}
            onChange={(e) => setModelName(e.target.value)}
          >
            <option value="Standard">Standard</option>
            <option value="Wide Body">Wide Body</option>
            <option value="Jumbo">Jumbo</option>
            <option value="Flat Bottom">Flat Bottom</option>
          </select>
        </div>
        <div>
          <label>Build Start Date</label>
          <input 
            type="date"
            name="startDate"
            value={startDate}
            onChange={(e) => setStartDate(e.target.value)}
          />
        </div>
        <div>
          <label>Build Finish Date</label>
          <input 
            type="date"
            name="finishDate"
            value={finishDate}
            onChange={(e) => setFinishDate(e.target.value)}
          />
        </div>
        <div>
          <label>Stock Length</label>
          <input 
            type="number"
            name="stockLength"
            value={stockLength}
            onChange={(e) => setStockLength(e.target.value)}
          />
        </div>
        <div>
          <label>Custom Length</label>
          <input 
            type="number"
            name="customLength"
            value={customLength}
            onChange={(e) => setCustomLength(e.target.value)}
          />
        </div>
        <div>
          <label>URL for your skiff's picture (selfie)</label>
          <input 
            type="text"
            name="pictureUrl"
            value={pictureUrl}
            onChange={(e) => setPictureUrl(e.target.value)}
          />
        </div>
        <div>
          <label>Description</label>
          <input 
            type="text"
            name="description"
            value={description}
            onChange={(e) => setDescription(e.target.value)}
          />
        </div>
        <button 
          type="submit"
        >Add My Skiff</button>
      </form>
    </div>
  )
}

export default NewSkiff;
