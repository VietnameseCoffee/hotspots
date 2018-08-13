import React from 'react';
import BusinessHours from './business_hours';
import BusinessExtraInfo from './business_extra_info';

const BusinessAside = ({ hours, info }) => {
  let hoursList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",];


  return (
    <div className="biz-aside-container">

      <div className="aside-info">
        <h3>Hours</h3>
        <BusinessHours hours={hours}/>
      </div>

      <div className="aside-info">
        <h3>More business info</h3>
        <BusinessExtraInfo info={info}/>
      </div>

      <div className="aside-info">
        <h3>Browse nearby</h3>

      </div>



    </div>
  );
}

export default BusinessAside;
