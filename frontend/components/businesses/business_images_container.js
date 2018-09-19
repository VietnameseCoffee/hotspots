import { connect } from 'react-redux';

import BusinessImages from './business_images';

const msp = ({ entities }, ownProps) => {
  return {
    photos: ownProps.photoIds.map((id) => entities.photos[id])
  }
}

const mdp = (dispatch) => {
  return {}
}

export default connect(msp, mdp)(BusinessImages);
