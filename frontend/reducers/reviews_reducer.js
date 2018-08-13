import { RECEIVE_REVIEW, REMOVE_REVIEW } from '../actions/review_actions';
import { RECEIVE_BUSINESS } from '../actions/business_actions';

const reviewsReducer = (state = {}, action ) => {
  Object.freeze(state);
  let payload = action.payload;

  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge({}, state, {[payload.business.id]: payload.business });
    case RECEIVE_BUSINESSES:
      return merge({}, state, payload.businesses);
    default:
        return state;
  }
};

  
