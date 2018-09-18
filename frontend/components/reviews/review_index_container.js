import { connect } from 'react-redux';

import ReviewIndex from './review_index';
import { requestDeleteReview } from '../../actions/review_actions';

const msp = (state, ownProps) => {

  let revUsers = {}, entities = state.entities;
  let userIds = ownProps.reviewIds.map((revId) => entities.reviews[revId].userId);

  userIds.forEach((userId) => revUsers[userId] = entities.users[userId]);
  return ({
    reviews: ownProps.reviewIds.map((revId) => entities.reviews[revId]),
    users: revUsers,
    currentUser: parseInt(state.session.id)
  });
};

const mdp = (dispatch) => {
  return {
    deleteReview: (id) => dispatch(requestDeleteReview(id))
  };
};

export default connect(msp, mdp)(ReviewIndex);
