import React from 'react';

import ReviewIndexItem from './review_index_item';

const ReviewIndex = ({ reviews, users, deleteReview, currentUser }) => {

  return (
    <div className="review-index">
      <ul>
        {reviews.map ((review) => {
          return (
          <ReviewIndexItem
            key={review.id}
            review={review}
            user={users[review.userId]}
            deleteReview={deleteReview}
            currentUser={currentUser}
          />)
        })}
      </ul>
    </div>
  );
};

export default ReviewIndex;
