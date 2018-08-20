import { connect } from 'react-redux';

import SearchResultsList from './search_results_list';
import { requestBusiness } from '../../actions/business_actions'
import { requestSearch } from '../../actions/search_actions'

const msp = (state) => {

  return {
    businesses: state.search.map ((id) => state.entities.businesses[id])
  };
};

const mdp = dispatch => {
  return {
    requestBusiness: (id) => dispatch(requestBusiness(id)),
    requestSearch: (query) => dispatch(requestSearch(query))
  };
};

export default connect(msp, mdp)(SearchResultsList);
