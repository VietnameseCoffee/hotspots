import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const UserHeader = ({ currentUser, requestLogout, match}) => {
  // debugger
  const splash = match.isExact ?  'splash-': '';

  const sessionLinks = () => {
    let loginLink;

    if (splash){
      loginLink = (
        <span className={`${splash}login`}>
          <Link to="/login">Login</Link>
        </span>
      );
    }


    return (
      <div className={`${splash}login-signup`}>
        {loginLink}
        &nbsp;&nbsp;
        <span>
          <Link className={`${splash}signup`} to="/signup">Sign up</Link>
        </span>


      </div>
    );
  };

  // <span className="demo-login">
  //   <Link className={`${splash}signup`} to="/signup">Demo</Link>
  // </span>

  // change to a picture with a dropdown, place holder from benchbnb
  const greeting = () => (
    <div className="header-group">
      <h2 className="header-name">Hi, {currentUser.firstName}!, pic here soon!</h2>
      <button className="header-button" onClick={requestLogout}>Log Out</button>
    </div>
  );
  return currentUser ? greeting() : sessionLinks();
};

export default withRouter(UserHeader);
