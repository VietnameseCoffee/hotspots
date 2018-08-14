import React from 'react';
import { Link } from 'react-router-dom';

const BusinessImages = (props) => {

  return (
    <div className="biz-images-container">
      <div className="biz-images">
        <img src={window.images.dimsum}></img>
        <img src={window.images.dimsum}></img>
        <img src={window.images.dimsum}></img>


      </div>
    </div>
  );


};

export default BusinessImages;
