import { RECEIVE_BUSINESS, RECEIVE_BUSINESSES } from '../actions/session_actions';
import merge from 'lodash/merge';

const businessesReducer = (state = {}, action) => {
  Object.freeze(state);
  let payload = action.payload;

  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge({}, state, {[payload.business.id]: payload});
    case RECEIVE_BUSINESSES:
      return _nullState;
    default:
        return state;
  }
};

export default businessesReducer;
