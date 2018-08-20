import { connect } from 'react-redux';

import SplashMain from './splash_main';
import { requestBusinesses, requestBusiness } from '../../actions/business_actions';


const msp = ({ entities }) => {
  return ({
    businesses: entities.businesses.hotSpots.map((id) => entities.businesses[id])
  });
};

const mdp = (dispatch) => {
  return {
    requestBusinesses: () => dispatch(requestBusinesses()),
    requestBusiness: (id) => dispatch(requestBusiness(id))
  };
};

export default connect(msp, mdp)(SplashMain);
