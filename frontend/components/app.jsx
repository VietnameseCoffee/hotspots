import React from 'react';
import { Switch, Route, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import Header from './header/header.jsx';
import SplashHeader from './splash/splash_header';


const App = () => {

  return (
    <div>
      <header className="header-main-container">
        <Switch>
          <Route exact path="/" component={SplashHeader}/>
          <Route path='/' component={Header}/>
        </Switch>
      </header>
      <div className="main">
        <AuthRoute exact path="/login" component={ LoginFormContainer }/>
        <AuthRoute exact path="/signup" component={ SignupFormContainer }/>
      </div>
    </div>
  );
};


export default App;
