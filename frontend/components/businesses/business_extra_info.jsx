import React from 'react';

const BusinessExtraInfo = ({info}) => {
  return (
    <ul>
      {info.map((detail, i) => <li key={i}><span>{detail[0]}</span><span>{detail[1]}</span></li>)}
    </ul>

  );
};

export default BusinessExtraInfo;
