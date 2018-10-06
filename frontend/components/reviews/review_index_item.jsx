import React from 'react';
import * as Util from '../../util/open_modal_util';

const ReviewIndexItem = ({ review, user, currentUser, deleteReview, userPhotos }) => {
  let deleteButton;
  let photos;
  if (review.userId === currentUser) {
    deleteButton = (
      <button onClick={() => {deleteReview(review.id)}}>
        <i className="fa fa-trash" aria-hidden="true"></i>
      </button>);
  }
  // debugger
  if (userPhotos.length > 0) {
    // debugger
    photos = (
      <div className="review-images">
        {userPhotos.map((pic) => (
          <div
            key={pic.photoUrl}
            className="image-container"
            onClick={() => Util.openModal(pic.photoUrl)}>
            <img src={pic.photoUrl}></img>
          </div>
        ))}
      </div>

  )
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

        {photos}

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
