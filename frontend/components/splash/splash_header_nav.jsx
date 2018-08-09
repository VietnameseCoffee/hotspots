import React from 'react';
import { Link } from 'react-router-dom';

const SplashHeaderNav = () => {

  return (
    <ul>
      <li><Link to="/">Write a Review</Link></li>
      <li><Link to="/">Events</Link></li>
      <li><Link to="/">Git</Link></li>
    </ul>
  );
};

export default SplashHeaderNav;
