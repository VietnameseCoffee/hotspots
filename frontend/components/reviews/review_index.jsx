import React from 'react';

import ReviewIndexItem from './review_index_item';

const ReviewIndex = ({ reviews, users }) => {

  return (
    <div className="review-index">
      <ul>
        {reviews.map ((review) => <ReviewIndexItem key={review.id} review={review} user={users[review.userId]}/>)}
      </ul>
    </div>
  );
};

export default ReviewIndex;
