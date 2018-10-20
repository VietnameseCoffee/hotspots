import { RECEIVE_REVIEW, REMOVE_REVIEW } from '../actions/review_actions';
import { RECEIVE_BUSINESS } from '../actions/business_actions';

import merge from 'lodash/merge';

const reviewsReducer = (state = {}, action ) => {
  Object.freeze(state);
  let payload = action.payload;

  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge({}, state, payload.reviews);
    case RECEIVE_REVIEW:
      return merge({}, state, {[payload.review.id]: payload.review });
    case REMOVE_REVIEW:
      let _newState = merge({}, state );
      delete _newState[payload.review.id];
      return _newState;
    default:
        return state;
  }
};

export default reviewsReducer;
