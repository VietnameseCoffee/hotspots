import React from 'react';

import ReviewIndexItem from './review_index_item'

const ReviewIndex = (props) => {

  return (
    <div className="review-index">
      lmao
      {props.reviews.map ((review) => <li>{review.text}</li>)}
    </div>
  );
};

export default ReviewIndex;
