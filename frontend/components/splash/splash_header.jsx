import React from 'react';

import { Route } from 'react-router-dom'
import UserHeaderContainer from '../header/user_header_container';
import SplashHeaderTop from './splash_header_top';
import SearchBarContainer from '../header/search_bar_container';
import NavBar from '../header/nav_bar'; // need to implement

const SplashHeader = () => {
  let num = Math.floor(Math.random() * 14.99)
  let backgroundImg = {
    backgroundImage: `url(https://s3-us-west-1.amazonaws.com/hot-spots-dev/front_${num}.jpg)`
  }
  return (
    <div className='splash-top' style={backgroundImg}>
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
          <div className="logo-img"></div>
        </div>

        <div className="splash-search-bar">
          <SearchBarContainer />
        </div>

        <div className="nav-bar">

        </div>

      </div>
    </div>
  );
};

export default SplashHeader;
