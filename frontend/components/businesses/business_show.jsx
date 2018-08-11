import React from 'react';
import { Link } from 'react-router-dom';


class BusinessShow extends React.Component {

  constructor (props) {
    super(props);
    this.state = props.business;
  }

  componentDidMount () {
    this.props.requestBusiness(this.props.businessId);
  }

  componentWillUpdateProps

  render () {
    return (
      <div className="business-show">Business Show!</div>
    );
  }

}

export default BusinessShow;
