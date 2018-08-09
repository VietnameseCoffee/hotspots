import { connect } from 'react-redux';
import { withRouter } from 'react-router';

import { requestLogout } from '../../actions/session_actions';
import UserHeader from './user_header';

const msp = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id]
  };
};

const mdp = dispatch => {

  return { requestLogout: () => dispatch(requestLogout()) }
};


export default withRouter(connect(msp, mdp)(UserHeader));
