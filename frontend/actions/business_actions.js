import * as BusinessApiUtil from '../util/business_api_util';

export const RECEIVE_BUSINESS = 'RECEIVE_BUSINESS';
export const RECEIVE_BUSINESSES = 'RECEIVE_BUSINESSES';

const receiveBusiness = (business) => {
  return ({
    type: RECEIVE_BUSINESS,
    payload: business,
  });
};

export const receiveBusinesses = (businesses) => {
  return ({
    type: RECEIVE_BUSINESSES,
    payload: businesses,
  });
};

export const requestBusiness = (id) => (dispatch) => {
  return (BusinessApiUtil.showBusiness(id)
    .then( business => dispatch(receiveBusiness(business))));
};
