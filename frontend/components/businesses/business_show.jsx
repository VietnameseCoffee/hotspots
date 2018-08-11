import React from 'react';
import { Link } from 'react-router-dom';

import BusinessHeader from './business_header';
import BusinessDetail from './business_detail';
import BusinessImages from './business_images';

class BusinessShow extends React.Component {

  constructor (props) {
    super(props);

  }

  componentDidMount () {
    this.props.requestBusiness(this.props.businessId);
  }

  render () {

    return (
      <div className="biz-show">

        <div className="biz-top">
          <div className="biz-header">
            <BusinessHeader />
          </div>

          <div className="biz-sub-header">
            <BusinessDetail />
            <BusinessImages />
          </div>
        </div>

        <div className="biz-main">
          Business Main w Reviews Hours n XTRA INFO
        </div>


        Business Show!

      </div>
    );
  }

}

export default BusinessShow;
