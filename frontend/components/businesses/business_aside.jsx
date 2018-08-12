import React from 'react';

const BusinessAside = ({ hours }) => {
  let hoursList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",];

  hoursList = hoursList.map((el, i) => <tr><th>{el}</th><td>{hours[i]}</td></tr>)

  return (
    <div className="biz-aside-container">

      <div className="aside-info">
        <h3>Hours</h3>
        <table>
          {hoursList}
        </table>
      </div>

      <div className="aside-info">
        <h3>More business info</h3>
        {}
      </div>



    </div>
  );
}

export default BusinessAside;
