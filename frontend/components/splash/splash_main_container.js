import { connect } from 'react-redux';

import SplashMain from './splash_main';
import { requestBusinesses } from '../../actions/business_actions';

const msp = ({ entities }) => {
  debugger
  return ({
    businesses: entities.businesses.hotSpots.map((id) => entities.businesses[id])
  });
};

const mdp = (dispatch) => {
  return {
    requestBusinesses: () => dispatch(requestBusinesses())
  };
};

export default connect(msp, mdp)(SplashMain);
