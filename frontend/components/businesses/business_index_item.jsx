import React from 'react';
import {Link} from 'react-router-dom'

const ReviewIndexItem = ({ biz, index }) => {

  return (
    <li className="biz-index-item">

      <div className="biz-side-bar" >
        <div className="image-container">
          <Link to={`/businesses/${biz.id}`}></Link>
        </div>
      </div>

      <div className="biz-body" >
        <div className="biz-info">

        </div>
        <div className="biz-extras">
          <div>

          </div>

        </div>
      </div>


    </li>
  );
};

export default ReviewIndexItem;
