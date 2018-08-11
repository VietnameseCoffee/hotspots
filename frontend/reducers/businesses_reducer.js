import { RECEIVE_BUSINESS, RECEIVE_BUSINESSES } from '../actions/session_actions';
import merge from 'lodash/merge';

const businessesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge;
    case RECEIVE_BUSINESSES:
      return _nullState;
    default:
        return state;
  }

};
