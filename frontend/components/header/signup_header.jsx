import React from 'react';
import { Link } from 'react-router-dom';


const SignupHeader = () => {

  return (
    <div className='header-arranger'>
      <div className="header-logo">
        <Link to="/" className="header-link">
          <div className="logo-img"></div>
        </Link>
      </div>
    </div>
  );
};

export default SignupHeader;
