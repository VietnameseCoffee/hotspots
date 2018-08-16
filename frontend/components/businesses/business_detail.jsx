import React from 'react';
import { Link } from 'react-router-dom';

import Map from '../maps/map';

const BusinessDetail = ({details}) => {

  return (
    <div className="biz-detail-container">
      <div className="biz-detail">

        <div className="map-box">
          <Map />
        </div>

        <ul className="biz-info">
          <li>{details.address}
            <br></br>
            {`${details.city}, ${details.state} ${details.zip}`}
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
