import { connect } from 'react-redux';

import SplashMain from './splash_main';
import { requestBusinesses } from '../../actions/business_actions';


const msp = ({ entities }) => {
  const businesses = [];
  const photos = {};
  entities.businesses.hotSpots.map((id) => {
    let biz = entities.businesses[id];
    let picId = biz.photoIds[0];
    businesses.push(biz);
    if (picId) photos[picId] = entities.photos[picId];
  })

  return ({
    businesses: businesses,
    photos: photos
  });
};

const mdp = (dispatch) => {
  return {
    requestBusinesses: () => dispatch(requestBusinesses())
  };
};

export default connect(msp, mdp)(SplashMain);
