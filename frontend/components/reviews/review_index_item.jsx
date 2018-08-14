import React from 'react';

const ReviewIndexItem = ({ review, user }) => {

  return (
    <li className="review-index-item">

      <div className="review-side-bar" >
        <div className="profile-content">
          <a>Profile img</a>
          <ul>
            <li className="user-name">{user.firstName}, {user.lastName}</li>
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
      </div>

    </li>
  );
};

export default ReviewIndexItem;
