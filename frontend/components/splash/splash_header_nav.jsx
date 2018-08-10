import React from 'react';
import { Link } from 'react-router-dom';

const SplashHeaderNav = () => {

  return (
    <nav>
      <ul>
        <li><Link to="/">Restaurants</Link></li>
        <li><Link to="/">Night Life</Link></li>
        <li><Link to="/">Hot Spots</Link></li>
      </ul>
    </nav>
  );
};

export default SplashHeaderNav;
