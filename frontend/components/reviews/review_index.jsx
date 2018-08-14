import React from 'react';

import ReviewIndexItem from './review_index_item';

const ReviewIndex = (props) => {

  return (
    <div className="review-index">

      <ul>
        {props.reviews.map ((review) => <ReviewIndexItem key={review.id}review={review}/>)}
      </ul>
    </div>
  );
};

export default ReviewIndex;
