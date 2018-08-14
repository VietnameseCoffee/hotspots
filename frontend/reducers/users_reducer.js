import merge from 'lodash/merge';
import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_BUSINESS } from '../actions/business_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  let payload = action.payload;

  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, { [payload.user.id]: payload.user });
    case RECEIVE_BUSINESS:
      return merge({}, state, payload.users);
    default:
      return state;
  }
};

export default usersReducer;
