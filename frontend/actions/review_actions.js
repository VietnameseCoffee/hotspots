import * as ReviewApiUtil from '../util/review_api_util';


// export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS'; MAYBE IF LOTS O REVIEWS
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';


export const recieveReview = (review) => ({
  type: RECEIVE_REVIEW,
  payload: { review }
});

export const removeReview = ({review, newStars}) => ({
  type: REMOVE_REVIEW,
  payload: { review, newStars }
});

export const recieveReviewErrors = (errors) => ({
  type: RECEIVE_REVIEW_ERRORS,
  payload: { errors }
});

export const removeReviewErrors = () => ({
  type: RECEIVE_REVIEW_ERRORS,
});

export const requestAddReview = (formReview) => (dispatch) => {
  return (
  ReviewApiUtil.postReview(formReview)
  .then(review => dispatch(recieveReview(review)), err => dispatch(recieveReviewErrors(err)))
  );
};

export const requestUpdateReview = (formReview) => (dispatch) => {
  return (
  ReviewApiUtil.patchReview(formReview)
  .then(review => dispatch(recieveReview(review)), err => dispatch(recieveReviewErrors(err)))
  );
};

export const requestDeleteReview = (id) => (dispatch) => {
  return (
  ReviewApiUtil.deleteReview(id)
  .then(review => dispatch(removeReview(review)), err => dispatch(recieveReviewErrors(err)))
  );
};
