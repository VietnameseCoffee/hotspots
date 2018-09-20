import { connect } from 'react-redux';

import ReviewDiscover from './review_discover';
import { requestBusinesses, requestBusiness } from '../../actions/business_actions';


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
    requestBusinesses: () => dispatch(requestBusinesses()),
    requestBusiness: (id) => dispatch(requestBusiness(id))
  };
};

export default connect(msp, mdp)(ReviewDiscover);
