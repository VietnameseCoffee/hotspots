import React from 'react';

import { Route, Link } from 'react-router-dom';
import UserHeaderContainer from './user_header_container';
import SearchBarContainer from './search_bar_container';

const Header = () => {

  return (
    <div className='header-arranger'>

      <div className="header-logo">
        <Link to="/" className="header-link">
          <h1>Hot Spots</h1>
        </Link>
      </div>

      <div className="header-search-bar">
        <SearchBarContainer />
      </div>

      <div className="header-right">
        <UserHeaderContainer />
      </div>
    </div>
  );
};

export default Header;
