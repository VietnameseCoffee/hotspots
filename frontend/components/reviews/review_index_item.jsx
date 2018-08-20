import React from 'react';

const ReviewIndexItem = ({ review, user, currentUser, deleteReview }) => {
  let deleteButton
  let profilePic = 5;
  if (review.userId === currentUser) {
    deleteButton = (
      <button onClick={() => {deleteReview(review.id)}}>
        <i className="fa fa-trash" aria-hidden="true"></i>
      </button>);
  }

  if (user.photoUrl) {

  }
  return (
    <li className="review-index-item">

      <div className="review-side-bar" >
        <div className="profile-content">
          <a></a>
          <ul>
            <li className="user-name">{user.firstName}, {user.lastName.slice(0,1)}.</li>
            <li className="user-place">{user.city}, {user.state}</li>
          </ul>
        </div>
      </div>

      <div className="review-body" >
        <div className="review-info">
          <span className={`stars-mid-${review.stars}`}></span><span>{review.postDate}</span>
        </div>

        <p>
          {review.text}
        </p>

        <div className="review-extras">
          <div>

          </div>
          <div className="extras-button">
            {deleteButton}
          </div>
        </div>
      </div>


    </li>
  );
};

export default ReviewIndexItem;
