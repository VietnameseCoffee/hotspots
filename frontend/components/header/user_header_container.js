import { connect } from 'react-redux';
import { withRouter } from 'react-router';

import { requestLogout, requestLogin } from '../../actions/session_actions';
import UserHeader from './user_header';

const msp = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id]
  };
};

const mdp = dispatch => {

  return {
    requestLogout: () => dispatch(requestLogout()),
    demoLogin: (user) => dispatch(requestLogin(user))

  }
};


export default (connect(msp, mdp)(UserHeader));
