import { connect } from 'react-redux';

import ReviewIndex from './review_index';

const msp = ({entities}, ownProps) => {
  // refactor into selector
  let userIds = ownProps.reviewIds.map((revId) => entities.reviews[revId].userId);

  return ({
    reviews: ownProps.reviewIds.map((revId) => entities.reviews[revId]),
    users: userIds.map((userId) => entities.users[userId])
  });
};

export default connect(msp, null)(ReviewIndex);
