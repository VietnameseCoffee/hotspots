import React from 'react';
import {Link} from 'react-router-dom'

const ReviewIndexItem = ({ biz, index }) => {
  debugger
  return (
    <li className="biz-index-item">
      <div className="biz-side-bar" >
        <div className="image-container">
          <Link to={`/businesses/${biz.id}`}></Link>
        </div>
      </div>

      <div className="biz-body" >
        <div className="biz-main-info">
          <div className="biz-info">
            <div><span>{index}.</span><Link to={`/businesses/${biz.id}`}>{biz.name}</Link> </div>
            <div><span className={`stars-mid-${biz.stars}`}></span> </div>
            <div><span>{biz.price}</span><span>tags</span></div>
          </div>

          <div className="biz-extras">
            <div>{biz.phoneNumber}</div>
            <div>{biz.address}</div>
          </div>
        </div>
      </div>


    </li>
  );
};

export default ReviewIndexItem;
