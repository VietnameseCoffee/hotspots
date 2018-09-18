import { connect } from 'react-redux';

import BusinessShow from './business_show';
import { requestBusiness } from '../../actions/business_actions';
import { requestSearch } from '../../actions/search_actions';

const msp = ({entities}, ownProps) => {
  return {
    businessId: parseInt(ownProps.match.params.businessId),
    businessDetails: entities.businesses[ownProps.match.params.businessId]
  };
};

const mdp = (dispatch) => {

  return {
    requestBusiness: (name) => dispatch(requestBusiness(name)),
    requestSearch: (query) => dispatch(requestSearch(query))
  };
};


export default connect(msp, mdp)(BusinessShow);
