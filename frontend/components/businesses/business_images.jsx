import React from 'react';
import { Link } from 'react-router-dom';

const BusinessImages = ({imageUrls}) => {

  const images = imageUrls.map((url) =>
    <img src={url.photoUrl}></img>
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
