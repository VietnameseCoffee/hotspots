import React from 'react';

import UserHeaderContainer from '../header/user_header_container';

const Splash = () => {

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

export default Splash;
