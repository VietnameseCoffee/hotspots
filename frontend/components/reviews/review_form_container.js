import { connect } from 'react-redux';

import ReviewForm from './review_form';
import requestAddReview from '../../actions/review_actions';
import requestBusiness from '../../actions/business_actions';

const msp = ({entities}, { match }) => {
  return ({
    business: entities.businesses[match.params.businessId]
  });
};

const mdp = (dispatch) => {
  return {
    action: (formReview) => dispatch(requestAddReview(formReview)),
    requestBusiness: (id) => dispatch(requestBusiness(id))
  };
};

export default connect(msp, mdp)(ReviewForm);
