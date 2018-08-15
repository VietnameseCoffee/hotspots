import { RECEIVE_BUSINESS, RECEIVE_BUSINESSES } from '../actions/business_actions';
import { REMOVE_REVIEW } from '../actions/review_actions';

import merge from 'lodash/merge';

const businessesReducer = (state = {}, action) => {
  Object.freeze(state);
  let payload = action.payload;

  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge({}, state, {[payload.business.id]: payload.business });
    case RECEIVE_BUSINESSES:
      return merge({}, state, payload.businesses);
    case REMOVE_REVIEW:
      let _newState = merge({}, state);
      let reviewIds = _newState[payload.review.businessId].reviewIds;
      // debugger
      let index = reviewIds.indexOf(payload.review.id);
      reviewIds.splice(index, 1);
      return _newState;
    default:
        return state;
  }
};

export default businessesReducer;
