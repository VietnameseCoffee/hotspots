import { connect } from 'react-redux';

import UserForm from './user_form';
import { requestSignup } from '../../actions/session_actions';

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
  // console.log(434)
  return { action: (formUser) => dispatch(requestSignup(formUser))};
};


export default connect(msp, mdp)(UserForm);
