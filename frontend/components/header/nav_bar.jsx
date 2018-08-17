import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = () => {

  return (
    <nav>
      <ul>
        <li><Link to="/searches/">Restaurants</Link></li>
        <li><Link to="/searches/">Night Life</Link></li>
        <li><Link to="/searches/">Hot Spots</Link></li>
      </ul>
    </nav>
  );
};

export default NavBar;
