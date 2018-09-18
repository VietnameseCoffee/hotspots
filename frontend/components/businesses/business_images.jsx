import React from 'react';
import { Link } from 'react-router-dom';

const BusinessImages = ({ photoUrls }) => {

  const photos = photoUrls.slice(0, 3).map((url, i) => (
    <div key ={url.photoUrl} className={`biz-show-img-${i}`}>
      <img src={url.photoUrl}></img>
    </div>
    )
  );

  return (
    <div className="biz-images-container">
      <div className="biz-images">
        {photos}
      </div>
    </div>
  );
};

export default BusinessImages;
