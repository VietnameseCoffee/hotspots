import React from 'react';

import UserHeaderContainer from '../header/user_header_container';
import SplashHeaderNav from './splash_header_nav';
import SearchBarContainer from '../header/search_bar_container';

const SplashHeader = () => {

  return (
    <div className='splash-top'>
      <div className='splash-img'>
        <div>

        </div>
        <div className="splash-header">
          <div className="splash-header-left">
            <SplashHeaderNav />
          </div>
          <div className="splash-header-right">
            <UserHeaderContainer />
          </div>
        </div>

        <div className="splash-search-bar">
          <SearchBarContainer />
        </div>

      </div>
    </div>
  );
};

export default SplashHeader;
