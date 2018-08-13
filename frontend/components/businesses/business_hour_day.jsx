import React from 'react';

const BusinessHourDay = ({day, hours}) => {
  return (
    <tr><th>{day}</th><td>{hours}</td></tr>
  );
};

export default BusinessHourDay;
