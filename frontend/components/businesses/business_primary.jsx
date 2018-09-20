import React from 'react';

import ReviewIndexContainer from '../reviews/review_index_container'

const BusinessPrimary = ({reviewIds, photoIds}) => {
  return (
    <div className="biz-primary-container">
      <div className="biz-reviews-index">
        <h2>Recommended Reviews</h2>
        <ReviewIndexContainer
          reviewIds={reviewIds}
          photoIds={photoIds}/>
      </div>

    </div>
  );
};

export default BusinessPrimary;
