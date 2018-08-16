import React from 'react';
import { Link } from 'react-router-dom';

const BusinessImages = ({imageUrls}) => {
  // debugger
  const images = imageUrls.map((url, i) =>(
    <div className={`biz-show-img-${i}`}>
      <img key={url.photoUrl} src={url.photoUrl}></img>
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
