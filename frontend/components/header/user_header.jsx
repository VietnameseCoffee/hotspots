import React from 'react';
import { Link } from 'react-router-dom';

const UserHeader = ({ currentUser, requestLogout }) => {
  const sessionLinks = () => (
    <nav className="login-signup">
      <Link to="/login">Login</Link>
      &nbsp;or&nbsp;
      <Link to="/signup">Sign up!</Link>
    </nav>
  );

  const greeting = () => (
    <div className="header-group">
      <h2 className="header-name">Hi, {currentUser.firstName}!, pic here soon!</h2>
      <button className="header-button" onClick={requestLogout}>Log Out</button>
    </div>
  );
  return currentUser ? greeting() : sessionLinks();
};

export default UserHeader;
