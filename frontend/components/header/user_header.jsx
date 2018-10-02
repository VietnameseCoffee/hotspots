import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const UserHeader = ({ currentUser, requestLogout, match, demoLogin}) => {
  const splash = match.isExact ?  'splash-': '';
  let demo;
  let demo_user = {
    email: "jordan@gmail.com",
    password: "123456"
  }



  const sessionLinks = () => {
    let loginLink;

    if (splash){
      loginLink = (
        <div className={`${splash}login`}>
          <Link to="/login">Login</Link>
        </div>
      );
    }

    if (!currentUser) {
      demo = (
        <button
          className="demo-login"
          onClick={() => demoLogin(demo_user)}>Demo</button>
      )
    }


    return (
      <div className={`${splash}login-signup`}>
        {loginLink}
        <Link className={`${splash}signup`} to="/signup">Sign up</Link>
        {splash ? demo : null}
      </div>
    );
  };


  // change to a picture with a dropdown, place holder from benchbnb
  const greeting = () => (
    <div className="header-group">
      <div className="header-name">Welcome!</div>
      <button className="header-button" onClick={requestLogout}>Log Out</button>
    </div>
  );
  return currentUser ? greeting() : sessionLinks();
};

export default withRouter(UserHeader);
