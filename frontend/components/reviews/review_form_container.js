import { connect } from 'react-redux';

import ReviewForm from './review_form';
import requestAddReview from '../../actions/review_actions';
import requestBusiness from '../../actions/business_actions';

// const msp = ({entities}, ownProps) => {
//   return ({
//     businessName: 1;
//   });
// };

const mdp = (dispatch) => {
  return {
    action: (formReview) => dispatch(requestAddReview(formReview)),
    requestBusiness: (id) => dispatch(requestBusiness(id))
  };
};

export default connect(null, mdp)(ReviewForm);
