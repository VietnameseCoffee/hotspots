import React from 'react';

import UserHeaderContainer from '../header/user_header_container';

const SplashHeader = () => {

  return (
    <div className='splash-header'>
      <div className='splash-img'>
        <div className="splash-header-right">
          <UserHeaderContainer />
        </div>

      </div>
    </div>
  );
};

export default SplashHeader;
