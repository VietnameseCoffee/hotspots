import { connect } from 'react-redux';

import ReviewIndex from './review_index';

const msp = ({entities}, ownProps) => {
  // refactor into selector
  let revUsers = {};
  let userIds = ownProps.reviewIds.map((revId) => entities.reviews[revId].userId);
  userIds.map((userId) => revUsers[userId] = entities.users[userId]);
  console.log(revUsers)
  return ({
    reviews: ownProps.reviewIds.map((revId) => entities.reviews[revId]),
    users: revUsers
  });
};

export default connect(msp, null)(ReviewIndex);
