import React from 'react';
import { Link } from 'react-router-dom';


const SignupHeader = () => {

  return (
    <div className='header-arranger'>
      <div className="header-logo">
        <Link to="/" className="header-link">
          <h1>Hot Spots</h1>
        </Link>
      </div>
    </div>
  );
};

export default SignupHeader;
