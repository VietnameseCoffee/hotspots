import { connect } from 'react-redux';

import ReviewIndex from './review_index';

const msp = ({entities}, ownProps) => {
  // refactor into selector
  let revUsers = {};
  let userIds = ownProps.reviewIds.map((revId) => entities.reviews[revId].userId);
  userIds.forEach((userId) => revUsers[userId] = entities.users[userId]);
  return ({
    reviews: ownProps.reviewIds.map((revId) => entities.reviews[revId]),
    users: revUsers
  });
};

export default connect(msp, null)(ReviewIndex);
