import React from 'react';

import ReviewIndexItem from './review_index_item';

const ReviewIndex = ({ reviews, users, deleteReview, currentUser, photos }) => {

  return (
    <div className="review-index">
      <ul>
        {reviews.map ((review) => {
          let userPhotos = [];
          photos.forEach((pic) => {
            if (pic.userId === review.userId) {
              userPhotos.push(pic)
            }
          })

          return (
          <ReviewIndexItem
            key={review.id}
            review={review}
            user={users[review.userId]}
            deleteReview={deleteReview}
            currentUser={currentUser}
            userPhotos={userPhotos}
          />)
        })}
      </ul>
    </div>
  );
};

export default ReviewIndex;
