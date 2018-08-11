import * as BusinessApiUtil from '../util/business_api_util';

export const RECEIVE_BUSINESS = 'RECEIVE_BUSINESS';
export const RECEIVE_BUSINESSES = 'RECEIVE_BUSINESSES';

const receiveBusiness = (business) => {
  return ({
    type: RECEIVE_BUSINESS,
    payload: business,
  });
};

const receiveBusinesses = (businesses) => {
  return ({
    type: RECEIVE_BUSINESSES,
    payload: businesses,
  });
};

export const requestBusiness = (name) => (dispatch) => {
  return (BusinessApiUtil.showBusiness(name)
    .then( business => dispatch(receiveBusiness(business))));
};
