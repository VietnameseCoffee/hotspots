import React from 'react';

import UserHeaderContainer from '../header/user_header_container';
import SplashHeaderTop from './splash_header_top';
import SearchBarContainer from '../header/search_bar_container';
import SplashHeaderNav from './splash_header_nav';

const SplashHeader = () => {

  return (
    <div className='splash-top'>
      <div className='splash-content-container'>

        <div className="splash-header">
          <div className="splash-header-left">
            <SplashHeaderTop />
          </div>
          <div className="splash-header-right">
            <UserHeaderContainer />
          </div>
        </div>

        <div className="splash-logo">
          <div className="loader"></div>
          Logo Loading up, just wait for it
        </div>

        <div className="splash-search-bar">
          <SearchBarContainer />
        </div>

        <div className="splash-nav">
          <SplashHeaderNav />
        </div>

      </div>
    </div>
  );
};

export default SplashHeader;
