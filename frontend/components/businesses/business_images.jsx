import React from 'react';
import { Link } from 'react-router-dom';

const BusinessImages = ({imageUrls}) => {
  // debugger
  const images = imageUrls.map((url) =>(
    <div key ={url.photoUrl} className={`biz-show-img-${i}`}>
      <img src={url.photoUrl}></img>
    </div>
    )
  );

  return (
    <div className="biz-images-container">
      <div className="biz-images">
        {images}
      </div>
    </div>
  );
};

export default BusinessImages;
