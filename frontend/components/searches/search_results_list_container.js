import { connect } from 'react-redux';

import SearchResultsList from './search_results_list';

const msp = (state) => {
  return {
    businesses: state.search.map ((id) => state.entities.businesses[id])
  };
};

const mdp = dispatch => {
  return {};
};

export default connect(msp, mdp)(SearchResultsList);
