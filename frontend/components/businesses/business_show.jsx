import React from 'react';
import { Link } from 'react-router-dom';

import BusinessHeader from './business_header';
import BusinessDetail from './business_detail';
import BusinessImages from './business_images';
import BusinessPrimary from './business_primary';
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

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.businessId !== nextProps.match.params.businessId) {
      this.props.requestBusiness(nextProps.match.params.businessId);
    }
  }



  render () {
    let businessDetails = this.props.businessDetails;

    if (!businessDetails) {
      return (
        <div>Loading...</div>
      );
    }

    return (
      <div className="biz-show">
        <div className="biz-gray-top">
          <div className="biz-top">

            <div className="biz-header">
              <BusinessHeader
                name={businessDetails.name}
                price={businessDetails.price}
                tags={businessDetails.tags}/>
            </div>

            <div className="biz-sub-header">
              <BusinessDetail details={businessDetails}/>
              <BusinessImages />
            </div>

          </div>
        </div>

        <div className="biz-main">
          <div className="biz-primary">
            <BusinessPrimary reviews={businessDetails.reviewIds}/>
          </div>
          <div className="biz-aside">
            <BusinessAside
              hours={businessDetails.hours}
              info={businessDetails.info} />
          </div>
        </div>


      </div>
    );
  }

}

export default BusinessShow;
