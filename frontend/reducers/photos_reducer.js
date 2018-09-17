import { RECEIVE_BUSINESS, RECEIVE_BUSINESSES, RECEIVE_HOT_SPOTS } from '../actions/business_actions';
import merge from 'lodash/merge';

const photosReducer = (state = {}}, action) => {
  Object.freeze(state);
  let payload = action.payload;

  switch (action.type) {
    case RECEIVE_BUSINESS:
      return merge({}, state, {[payload.photos.id]: payload.photos });
    case RECEIVE_BUSINESSES:
      return merge({}, state, payload.businesses);
    case RECEIVE_HOT_SPOTS:
      return merge({}, state, payload.businesses);
    case REMOVE_REVIEW:
      let _newState = merge({}, state);
      _newState[payload.review.businessId].stars = payload.newStars
      let reviewIds = _newState[payload.review.businessId].reviewIds;
      let index = reviewIds.indexOf(payload.review.id);
      reviewIds.splice(index, 1);
      return _newState;
    default:
        return state;
  }
};

export default businessesReducer;
