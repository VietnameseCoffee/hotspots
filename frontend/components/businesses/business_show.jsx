import React from 'react';
import { Link } from 'react-router-dom';


class BusinessShow extends React.Component {

  constructor (props) {
    super(props);
    this.state = {};
  }

  componentDidMount () {
    this.props.requestBusiness(this.props.match.params.businessId);
  }

  render () {
    // console.log(this.props.match.params.businessId)
    return (
      <div className="business-show">Business Show!</div>
    );
  }

}

export default BusinessShow;
