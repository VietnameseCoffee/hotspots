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
          <li>
            <i className="fa fa-map-marker"></i>
            <div>
              {details.address}
              <br></br>
              {`${details.city}, ${details.state} ${details.zip}`}
            </div>
          </li>
          <li>
            <i className="fa fa-phone"></i>
            <div>
              {details.phoneNumber}
            </div>
          </li>
          <li>
            <i className="fa fa-map-signs"></i>
            <div>
              <a href={mapLink}>Get Directions</a>
            </div>
          </li>
          <li>
            <i className="fa fa-envelope"></i>
            <div>
              <Link className="working" to="#">Message the Business</Link>
            </div>
          </li>
        </ul>

      </div>
    </div>
  );


};

export default BusinessDetail;
