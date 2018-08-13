import React from 'react';

const BusinessHours = ({hours}) => {
  let hoursList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun",];

  return (
    <table>
      <tbody>
        {hoursList.map((day, i) => <tr key={day}><th>{day}</th><td>{hours[i]}</td></tr>)}
      </tbody>
    </table>
  );
};

export default BusinessHours;
