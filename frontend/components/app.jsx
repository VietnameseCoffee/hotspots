import React from 'react';
import { Route, Link } from 'react-router-dom';

import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { AuthRoute } from '../util/route_util';
import Header from './header/header.jsx';


const App = () => {

  return (
    <div>
      <header className="header">
        <Link to="/" className="header-link">
          <h1>Hot Spots</h1>
        </Link>
        <Header/>
      </header>
      <div className="main">
        <AuthRoute exact path="/login" component={ LoginFormContainer }/>
        <AuthRoute exact path="/signup" component={ SignupFormContainer }/>
      </div>
    </div>
  );
};


export default App;
