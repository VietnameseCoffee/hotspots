import React from 'react';

import ReviewIndexItem from './review_index_item';

const ReviewIndex = ({ reviews, users, deleteReview, currentUser, photos }) => {

  return (
    <div className="review-index">
      <ul>
        {reviews.map ((review) => {
          let photos;
          return (
          <ReviewIndexItem
            key={review.id}
            review={review}
            user={users[review.userId]}
            deleteReview={deleteReview}
            currentUser={currentUser}
            photos={photos}
          />)
        })}
      </ul>
    </div>
  );
};

export default ReviewIndex;
