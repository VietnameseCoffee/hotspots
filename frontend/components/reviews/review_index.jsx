import React from 'react';

import ReviewIndexItem from './review_index_item';

const ReviewIndex = (props) => {

  return (
    <div className="review-index">
  
      <ul>
        {props.reviews.map ((review) => <ReviewIndexItem review={review}/>)}
      </ul>
    </div>
  );
};

export default ReviewIndex;
