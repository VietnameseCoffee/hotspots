import React from 'react';
import { Link } from 'react-router-dom';

const BusinessHeader = ({name}) => {


  return (
    <div className="biz-header-container">
      <div className="biz-header-left">
        <h1>{name}</h1>

        <div className="stars">
          <div className="stars-big-4"></div><span>Num Ratings</span> 
        </div>

        <div className="tags-price">
          <span>Price</span> ..
          <span> <a>a tag</a></span>
        </div>

      </div>

      <div className="biz-header-right">

        <div className="biz-header-actions">
          <Link className="write-a-review" to="/">Write a Review</Link>
          <Link className="biz-action" to="/">Add Photo</Link>
          <Link className="biz-action" to="/">Share</Link>
          <Link className="biz-action" to="/">Save</Link>

        </div>


      </div>
    </div>
  );


};

export default BusinessHeader;
