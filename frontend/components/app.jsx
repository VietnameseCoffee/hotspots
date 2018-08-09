import React from 'react';
import { Route, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import Header from './header/header.jsx';
import Splash from './splash/splash';


const App = () => {

  return (
    <div>
      <header className="header-main-container">
        <Header/>
        <Route exact path="/" component={Splash}/>
      </header>
      <div className="main">
        <AuthRoute exact path="/login" component={ LoginFormContainer }/>
        <AuthRoute exact path="/signup" component={ SignupFormContainer }/>
      </div>
    </div>
  );
};


export default App;
