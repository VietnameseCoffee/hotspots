import React from 'react';

const ReviewIndexItem = ({review}) => {

  return (
    <li className="review-index-item">
      {review.text}
    </li>
  );
};

export default ReviewIndexItem;
