import { connect } from 'react-redux';

import UserForm from './user_form';
import { requestLogin, removeSessionErrors } from '../../actions/session_actions';

const msp = (state) => ({
  formUser: { email: '', password: '' },
  formType: 'Log In',
  errors: state.errors.session
});

const mdp = (dispatch) => {
  return {
    action: (formUser) => dispatch(requestLogin(formUser)),
    removeSessionErrors: () => dispatch(removeSessionErrors())};
};


export default connect(msp, mdp)(UserForm);
