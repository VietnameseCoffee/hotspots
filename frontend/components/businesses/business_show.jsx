import React from 'react';
import { Link } from 'react-router-dom';

import BusinessHeader from './business_header';
import BusinessDetail from './business_detail';
import BusinessImagesContainer from './business_images_container';
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
        <div className="loading">
          <div class="sk-circle">
            <div class="sk-circle1 sk-child"></div>
            <div class="sk-circle2 sk-child"></div>
            <div class="sk-circle3 sk-child"></div>
            <div class="sk-circle4 sk-child"></div>
            <div class="sk-circle5 sk-child"></div>
            <div class="sk-circle6 sk-child"></div>
            <div class="sk-circle7 sk-child"></div>
            <div class="sk-circle8 sk-child"></div>
            <div class="sk-circle9 sk-child"></div>
            <div class="sk-circle10 sk-child"></div>
            <div class="sk-circle11 sk-child"></div>
            <div class="sk-circle12 sk-child"></div>
          </div>
        </div>
      );
    }

    return (
      <div className="biz-show">
        <div className="biz-gray-top">
          <div className="biz-top">

            <div className="biz-header">
              <BusinessHeader
                id={this.props.businessId}
                name={businessDetails.name}
                price={businessDetails.price}
                tags={businessDetails.tags}
                stars={businessDetails.stars}
                requestSearch={this.props.requestSearch}
                numReviews={businessDetails.reviewIds.length}/>
            </div>

            <div className="biz-sub-header">
              <BusinessDetail details={businessDetails}/>
              <BusinessImagesContainer photoIds={businessDetails.photoIds}/>
            </div>

          </div>
        </div>

        <div className="biz-main">
          <div className="biz-primary">
            <BusinessPrimary
              reviewIds={businessDetails.reviewIds}
              photoIds={businessDetails.photoIds}/>
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
