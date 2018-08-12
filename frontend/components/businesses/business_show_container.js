import { connect } from 'react-redux';

import BusinessShow from './business_show';
import { requestBusiness } from '../../actions/business_actions';

const msp = ({entities}, ownProps) => {
  return {
    businessId: parseInt(ownProps.match.params.businessId),
    businessDetails: entities.businesses[ownProps.match.params.businessId],
    imageIds: [],
    reviewIds: [],
    extrainfo: {}
  };
};

const mdp = (dispatch) => {
  return {
    requestBusiness: (name) => dispatch(requestBusiness(name))
  };
};


export default connect(msp, mdp)(BusinessShow);
