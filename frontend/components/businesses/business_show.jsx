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
    let options = {
      zoom: 8,
      center:{lat:42.3601, lng:-71.0589}
    };
  
    return (
      <div className="biz-show">
        <div className="biz-gray-top">
          <div className="biz-top">

            <div className="biz-header">
              <BusinessHeader
                id={this.props.businessId}
                name={businessDetails.name}
                price={businessDetails.price}
                tags={businessDetails.tags}/>
            </div>

            <div className="biz-sub-header">
              <BusinessDetail details={businessDetails}/>
              <BusinessImages imageUrls={businessDetails.photos}/>
            </div>

          </div>
        </div>

        <div className="biz-main">
          <div className="biz-primary">
            <BusinessPrimary reviewIds={businessDetails.reviewIds}/>
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
