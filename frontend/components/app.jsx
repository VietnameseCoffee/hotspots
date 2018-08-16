import React from 'react';
import { Switch, Route, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';

import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import Header from './header/header.jsx';
import SignupHeader from './header/signup_header.jsx';
import SplashHeader from './splash/splash_header';
import BusinessShowContainer from './businesses/business_show_container';
import ReviewFormContainer from './reviews/review_form_container';


const App = () => {

  return (
    <div className="app">
      <header className="header-main-container">
        <Switch>
          <Route exact path="/" component={SplashHeader}/>
          <Route path='/login' component={SignupHeader}/>
          <Route path='/signup' component={SignupHeader}/>
          <Route path='/' component={Header}/>
        </Switch>
      </header>
      <div className="main">
        <AuthRoute exact path="/login" component={ LoginFormContainer }/>
        <AuthRoute exact path="/signup" component={ SignupFormContainer }/>
        <Route path={`/businesses/:businessId`} component={BusinessShowContainer} />
        <Route path={`/writeareview/:businessId`} component={ReviewFormContainer} />
      </div>
      links to show page----
      <Link to="/businesses/1">Good Mong Kok Bakery</Link>-----
      <Link to="/businesses/2">Wildflower Cafe</Link>-----
      <Link to="/businesses/3">Plow</Link>-----
      <div className="gmaps">
        hurro
      </div>
    </div>
  );
};


export default App;
