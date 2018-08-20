import { RECEIVE_BUSINESSES } from '../actions/business_actions';

import merge from 'lodash/merge';

const searchResultsReducer = (state = [], action ) => {
  Object.freeze(state);
  let payload = action.payload;
  switch (action.type) {
    case RECEIVE_BUSINESSES:
      return action.payload.businesses;
    default:
        return state;
  }
};

export default searchResultsReducer;
