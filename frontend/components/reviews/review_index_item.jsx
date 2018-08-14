import React from 'react';

const ReviewIndexItem = ({review}) => {

  return (
    <li className="review-index-item">
      <div className="review-side-bar" >
        Profile info goes here
      </div>
      <div className="review-body" >
        <div className="review-info">
          <span className={`stars-mid-${}`}>Stars</span>Stars and date go here
        </div>
        <p>
          {review.text}
        </p>
      </div>
    </li>
  );
};

export default ReviewIndexItem;
