import { connect } from 'react-redux';

import SearchResultsList from './search_results_list';
import { requestBusiness } from '../../actions/business_actions'
import { requestSearch } from '../../actions/search_actions'

const msp = (state) => {
  const businesses = [];
  const photos = {};

  state.search.map((id) => {
    let biz = state.entities.businesses[id];
    businesses.push(biz);
    let picId = biz.photoIds[0];
    photos[picId] = state.entities.photos[picId];
  })

  return {
    businesses: businesses,
    photos: photos
  };
};

const mdp = dispatch => {
  return {
    requestBusiness: (id) => dispatch(requestBusiness(id)),
    requestSearch: (query) => dispatch(requestSearch(query))
  };
};

export default connect(msp, mdp)(SearchResultsList);
