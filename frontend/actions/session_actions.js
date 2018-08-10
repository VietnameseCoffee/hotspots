import * as SessionApiUtil from '../util/session_api_util';


export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const REMOVE_SESSION_ERRORS = 'REMOVE_SESSION_ERRORS';

export const recieveCurrentUser = (user) => ({
  type: RECEIVE_CURRENT_USER,
  payload: { user }
});

export const removeSessionErrors = () => ({
  type: REMOVE_SESSION_ERRORS,
});

export const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

export const receiveErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  payload: errors
});

export const requestSignup = (formUser) => (dispatch) => {
  return (
  SessionApiUtil.postUser(formUser)
  .then(user => dispatch(recieveCurrentUser(user)), err => dispatch(receiveErrors(err)))
);};

export const requestLogin = (formUser) => (dispatch) => (
  SessionApiUtil.postSession(formUser)
  .then(user => dispatch(recieveCurrentUser(user)), err => dispatch(receiveErrors(err)))
);

export const requestLogout = () => (dispatch) => (
  SessionApiUtil.deleteSession()
  .then(user => dispatch(logoutCurrentUser(user)))
);

// handle errors in promise then
