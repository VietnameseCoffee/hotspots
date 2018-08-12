import React from 'react';

const BusinessAside = ({ hours }) => {
  let hoursList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",];

  hoursList = hoursList.map((el, i) => <li><span>{el}</span><span>{hours[i]}</span></li>)

  return (
    <div className="biz-aside-container">Aside Hur

      <div className="aside-info">
        <h3>Hours</h3>
        <ul>
          {hoursList}
        </ul>
      </div>

      <div className="aside-info">
        More busines info
      </div>



    </div>
  );
}

export default BusinessAside;
