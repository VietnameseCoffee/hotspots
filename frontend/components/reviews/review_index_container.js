import { connect } from 'react-redux';

import ReviewIndex from './review_index';

const msp = ({entities}, ownProps) => {
  let reviews = ownProps.reviewIds;

  return ({
    reviews: ownProps.reviewIds.map((id) => entities.reviews[id] )
  });
};

export default connect(msp, null)(ReviewIndex);
