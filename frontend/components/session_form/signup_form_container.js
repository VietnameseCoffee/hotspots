import { connect } from 'react-redux';

import UserForm from './user_form';
import { requestSignup, removeSessionErrors } from '../../actions/session_actions';

const msp = (state) => ({
  formUser: {
    first_name: '',
    last_name: '',
    email: '',
    password: '',
    zip: '',
    month: 'Month',
    day: 'Day',
    year: 'Year'
  },
  formType: 'Sign Up',
  errors: state.errors.session
});

const mdp = (dispatch) => {
  return {
    action: (formUser) => dispatch(requestSignup(formUser)),
    removeSessionErrors: () => dispatch(removeSessionErrors())
  };
};


export default connect(msp, mdp)(UserForm);
