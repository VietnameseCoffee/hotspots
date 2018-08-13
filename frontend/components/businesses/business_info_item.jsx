import React from 'react';

const BusinessInfoItem = ({detail}) => {
  return (
    <li><span>{detail[0]}</span><span>{detail[1]}</span></li>

  );
};

export default BusinessInfoItem;
