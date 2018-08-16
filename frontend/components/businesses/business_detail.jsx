import React from 'react';
import { Link } from 'react-router-dom';

import Map from '../maps/map';

const BusinessDetail = ({details}) => {
  const lat = details.latitude;
  const lng = details.longitude;
  let mapLink = `https://www.google.com/maps/?q=${lat},${lng}`;

  return (
    <div className="biz-detail-container">
      <div className="biz-detail">

        <div className="map-box">
          <Map lat={lat} lng={lng}/>
        </div>

        <ul className="biz-info">
          <li>{details.address}
            <br></br>
            {`${details.city}, ${details.state} ${details.zip}`}
          </li>
          <li>{details.phoneNumber}</li>
          <li><a href={mapLink}>Get Directions</a></li>
          <li><Link to="/">Message the Business</Link></li>
        </ul>

      </div>
    </div>
  );


};

export default BusinessDetail;
