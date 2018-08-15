import { connect } from 'react-redux';

import ReviewForm from './review_form';
import requestAddReview from '../../actions/review_actions';
import { requestBusiness } from '../../actions/business_actions';
import getDate from '../../util/get_date_util';

const msp = (state, { match }) => {
  return ({
    business: state.entities.businesses[match.params.businessId],
    businessId: match.params.businessId,
    userId: state.session.id,
    getDate: getDate
  });
};

const mdp = (dispatch) => {
  return {
    action: (formReview) => dispatch(requestAddReview(formReview)),
    requestBusiness: (id) => dispatch(requestBusiness(id))
  };
};

export default connect(msp, mdp)(ReviewForm);
