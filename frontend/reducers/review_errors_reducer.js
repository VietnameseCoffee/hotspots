import { RECEIVE_REVIEW_ERRORS, REMOVE_REVIEW_ERRORS } from '../actions/review_actions';

const reviewErrorsReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {

    case RECEIVE_REVIEW_ERRORS:
      return action.payload.errors.responseJSON;
    case REMOVE_REVIEW_ERRORS:
      return [];
    default:
      return state;
  }
};
 export default reviewErrorsReducer;
