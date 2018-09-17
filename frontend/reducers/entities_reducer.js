import { combineReducers } from 'redux';


import usersReducer from './users_reducer';
import businessesReducer from './businesses_reducer';
import reviewsReducer from './reviews_reducer';
import photosReducer from './photos_reducer';

export default combineReducers({
  users: usersReducer,
  businesses: businessesReducer,
  reviews: reviewsReducer,
  photos: photosReducer
});
