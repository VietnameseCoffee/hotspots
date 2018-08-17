import { connect } from 'react-redux';

import SearchBar from './search_bar';
import { requestSearch } from '../../actions/search_actions';

const msp = () => {
   return {};
};

const mdp = (dispatch) => {
   return ({
      test: requestSearch,
      search: (query) => dispatch(requestSearch(query))
   });
};

export default connect(msp, mdp)(SearchBar);
