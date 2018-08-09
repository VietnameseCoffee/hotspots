import { connect } from 'react-redux';

import UserForm from './user_form';
import { requestLogin } from '../../actions/session_actions';

const msp = (state) => ({
  formUser: { email: '', password: '' },
  formType: 'Log In'
});

const mdp = (dispatch) => {
  return { action: (formUser) => dispatch(requestLogin(formUser))};
};


export default connect(msp, mdp)(UserForm);
