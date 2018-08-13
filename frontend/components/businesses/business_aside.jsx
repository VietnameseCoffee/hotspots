import React from 'react';
// import BusinessHourDay from './business_hour_day'

const BusinessAside = ({ hours, info }) => {
  let hoursList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",];


  return (
    <div className="biz-aside-container">

      <div className="aside-info">
        <h3>Hours</h3>
        <table>
          <tbody>
            {hoursList.map((el, i) => <tr><th>{el}</th><td>{hours[i]}</td></tr>)}
          </tbody>
        </table>
      </div>

      <div className="aside-info">
        <h3>More business info</h3>
        <ul>
          {info.map((detail) => <li><span>{detail[0]}</span><span>{detail[1]}</span></li>)}
        </ul>
      </div>



    </div>
  );
}

export default BusinessAside;
