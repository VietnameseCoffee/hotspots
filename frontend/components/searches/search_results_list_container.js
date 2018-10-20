import { connect } from 'react-redux';

import SearchResultsList from './search_results_list';
import { requestSearch } from '../../actions/search_actions'

const msp = (state) => {
  const businesses = [];
  const photos = {};
  const reviews = {};

  state.search.map((id) => {
    let biz = state.entities.businesses[id];
    let picId = biz.photoIds[0];


    businesses.push(biz);
    if (picId) photos[picId] = state.entities.photos[picId];

  })

  return {
    businesses: businesses,
    photos: photos,
    reviews: []
  };
};

const mdp = dispatch => {
  return {
    requestSearch: (query) => dispatch(requestSearch(query))
  };
};

export default connect(msp, mdp)(SearchResultsList);
