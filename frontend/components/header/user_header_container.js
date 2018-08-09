import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';
import UserHeader from './user_header';

const msp = ({ session, entities: { users } }) => {
  
  return {
    currentUser: users[session.id]
  };
};

const msd = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(msp, msd)(UserHeader);
