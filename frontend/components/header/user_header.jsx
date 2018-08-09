import React from 'react';
import { Link } from 'react-router-dom';

const UserHeader = ({ currentUser, requestLogout, match }) => {
  const splash = match.path === "/" ?  'splash-': '';

  const sessionLinks = () => (
    // debugger
    <nav className={`${splash}login-signup`}>
      <span className={`${splash}login`}>
        <Link to="/login">Login</Link>
      </span>
      &nbsp;&nbsp;
      <span>
        <Link className={`${splash}signup`} to="/signup">Sign up</Link>
      </span>
    </nav>
  );
  console.log(match)
  // change to a picture with a dropdown, place holder from benchbnb
  const greeting = () => (
    <div className="header-group">
      <h2 className="header-name">Hi, {currentUser.firstName}!, pic here soon!</h2>
      <button className="header-button" onClick={requestLogout}>Log Out</button>
    </div>
  );
  return currentUser ? greeting() : sessionLinks();
};

export default UserHeader;
