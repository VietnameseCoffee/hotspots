import * as SearchApiUtil from '../util/search_api_util';
import { receiveBusinesses } from './business_actions';

export const requestSearch = (search) => (dispatch) => {
  return (SearchApiUtil.showSearch(search)
    .then(res => dispatch(receiveBusinesses(res)))
  );
};
