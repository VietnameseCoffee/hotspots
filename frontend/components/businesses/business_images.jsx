import React from 'react';
import { Link } from 'react-router-dom';

const BusinessImages = ({imageUrls}) => {
  const images = imageUrls.map((url, i) =>(
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
