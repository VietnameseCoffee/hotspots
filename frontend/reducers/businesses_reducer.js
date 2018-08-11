import { RECEIVE_BUSINESS, RECEIVE_BUSINESSES } from '../actions/business_actions';
import merge from 'lodash/merge';

const businessesReducer = (state = {}, action) => {
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

export default businessesReducer;
