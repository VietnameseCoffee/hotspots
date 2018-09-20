import React from 'react';
import { Link } from 'react-router-dom';

const SplashHeaderTop = () => {

  return (
    <ul>
      <li><Link to={`/writeareview`}>Write a Review</Link></li>
      <li><a href="https://github.com/VietnameseCoffee/hotspots">GitHub</a></li>
    </ul>
  );
};

export default SplashHeaderTop;
