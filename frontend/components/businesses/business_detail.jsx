import React from 'react';
import { Link } from 'react-router-dom';

const BusinessDetail = ({details}) => {

  return (
    <div className="biz-detail-container">
      <div className="biz-detail">

        <div className="map-box">
          Map Box belongs here
        </div>

        <ul className="biz-info">
          <li>{details.address}
            <br></br>
            {details.city},
            {details.state}
          </li>
          <li>{details.phoneNumber}</li>
          <li><a>Get Directions</a></li>
          <li><a>Message the Business</a></li>
        </ul>

      </div>
    </div>
  );


};

export default BusinessDetail;
