import React from 'react';
import { Link } from 'react-router-dom';

import BusinessHeader from './business_header';
import BusinessDetail from './business_detail';
import BusinessImages from './business_images';
import BusinessReviews from './business_reviews';
import BusinessAside from './business_aside';

class BusinessShow extends React.Component {

  constructor (props) {
    super(props);

    // this.state = {
    //   headerDetails: props.businessDetails
    // };
  }

  componentDidMount () {
    this.props.requestBusiness(this.props.businessId);
  }

  render () {
    // console.log(this.props)
    if (!this.props.businessDetails) {
      return (
        <div>Loading...</div>
      );
    }

    return (
      <div className="biz-show">
        <div className="biz-gray-top">
          <div className="biz-top">
            <div className="biz-header">
              <BusinessHeader name={this.props.businessDetails.name}/>
            </div>

            <div className="biz-sub-header">
              <BusinessDetail details={this.props.businessDetails}/>
              <BusinessImages />
            </div>
          </div>
        </div>

        <div className="biz-main">
          <div className="biz-reviews">
            <BusinessReviews/>
          </div>
          <div className="biz-aside">
            <BusinessAside />
          </div>
        </div>


      </div>
    );
  }

}

export default BusinessShow;
