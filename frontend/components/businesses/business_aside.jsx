import React from 'react';
import BusinessHourDay from './business_hour_day';
import BusinessInfoItem from './business_info_item';

const BusinessAside = ({ hours, info }) => {
  let hoursList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",];


  return (
    <div className="biz-aside-container">

      <div className="aside-info">
        <h3>Hours</h3>
        <table>
          <tbody>
            {hoursList.map((day, i) => <BusinessHourDay key={day} day={day} hours={hours[i]}/>)}
          </tbody>
        </table>
      </div>

      <div className="aside-info">
        <h3>More business info</h3>
        <ul>
          {info.map((detail, i) => <BusinessInfoItem key={i} detail={detail}/>)}
        </ul>
      </div>
      
      <div className="aside-info">
        <h3>More business info</h3>
        <ul>
          {info.map((detail, i) => <BusinessInfoItem key={i} detail={detail}/>)}
        </ul>
      </div>



    </div>
  );
}

export default BusinessAside;
