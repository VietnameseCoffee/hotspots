import { RECEIVE_BUSINESS, RECEIVE_BUSINESSES, RECEIVE_HOT_SPOTS } from '../actions/business_actions';
import merge from 'lodash/merge';

const photosReducer = (state = {}, action) => {
  Object.freeze(state);
  let payload = action.payload;

  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge({}, state, payload.photos);
    case RECEIVE_BUSINESSES:
      return merge({}, state, payload.photos);
    case RECEIVE_HOT_SPOTS:
      return merge({}, state, payload.photos);
    default:
        return state;
  }
};

export default photosReducer;
