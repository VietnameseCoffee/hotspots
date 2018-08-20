import { connect } from 'react-redux';

import SplashMain from './splash_main';
import { requestBusiness } from '../../actions/business_actions';

const msp = ({ entities }) => {
  return ({
    businesses: state.entities.businesses

  });
};

const mdp = (dispatch) => {
  return {
    action: (formReview) => dispatch(requestAddReview(formReview)),
    requestBusiness: (id) => dispatch(requestBusiness(id))
  };
};

export default connect(msp, mdp)(ReviewForm);
