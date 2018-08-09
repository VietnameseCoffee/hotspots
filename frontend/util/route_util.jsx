import React from 'react';
import { connect } from 'react-redux';
import { Redirect, Route, withRouter } from 'react-router-dom';

const msp = state => {
  return {loggedIn: !!(state.session.currentUser)};
};

const Auth = ({ component: Component, path, loggedIn, exact }) => (
  <Route path={path} exact={exact} render={(props) => (
    !loggedIn ? (<Component {...props} />) : (<Redirect to="/" />)
  )} />
);

const Protected = ({ component: Component, path, loggedIn, exact }) => (
  <Route path={path} exact={exact} render={(props) => (
     loggedIn ? (<Component {...props} />) : (<Redirect to="/login" />)
  )} />
);

// {props => (loggedIn ? <Redirect to='/' /> : <Component {...props}/> ) />}

export const AuthRoute = withRouter(connect(msp)(Auth));
export const ProtectedRoute = withRouter(connect(msp)(Auth));
